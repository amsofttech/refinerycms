module Admin
  class PagesController < Admin::BaseController

    crudify :page,
            :conditions => nil,
            :order => "lft ASC",
            :include => [:slugs, :translations],
            :paging => false

    rescue_from FriendlyId::ReservedError, :with => :show_errors_for_reserved_slug

    after_filter lambda{::Page.expire_page_caching}, :only => [:update_positions]

    def new
      @page = Page.new
      Page.default_parts.each_with_index do |page_part, index|
        @page.parts << PagePart.new(:title => page_part, :position => index)
      end
    end

  protected

    # We can safely assume Refinery::I18n is defined because this method only gets
    # Invoked when the before_filter from the plugin is run.
    def globalize!
      unless action_name.to_s == 'index'
        super

        # Check whether we need to override e.g. on the pages form.
        unless params[:switch_locale] or @page.nil? or @page.slugs.where(:locale => Refinery::I18n.current_locale).nil? or !@page.persisted?
          Thread.current[:globalize_locale] = @page.slug.locale
        end
      else
        Thread.current[:globalize_locale] = nil
      end
    end

    def show_errors_for_reserved_slug(exception)
      flash[:error] = t('reserved_system_word', :scope => 'admin.pages')
      if action_name == 'update'
        find_page
        render :edit
      else
        @page = Page.new(params[:page])
        render :new
      end
    end

  end
end
