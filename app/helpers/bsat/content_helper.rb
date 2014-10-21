module Bsat
  module ContentHelper

    def bsat(content)
      bsat_content(content)
      render template: 'layouts/bsat'
    end

    def bsat_content(content = nil, &block)
      content_for(:bsat_content) do
        content_tag(:div, class: 'container-fluid') do
          block_given? ? capture(&block) : content
        end
      end
    end

    def bsat_brand(path: nil, title: nil, &block)
      content_for(:bsat_brand, block_given? ? capture(&block) : title)
      content_for(:bsat_brand_path, path) if path.present?
    end

    def bsat_sidebar_nav(&block)
      sidebar_nav = SidebarNav.new(self)
      yield(sidebar_nav) if block_given?
      content_for("bsat_sidebar_nav_items".to_sym, sidebar_nav.render)
    end

    def bsat_page_title(title = nil, &block)
      content_for(:bsat_page_title, block_given? ? capture(&block) : title)
    end

    def bsat_page_subtitle(subtitle = nil, &block)
      content_for(:bsat_page_subtitle, block_given? ? capture(&block) : subtitle)
    end

    def bsat_page_actions
      page_actions = PageActions.new(self)
      yield(page_actions) if block_given?
      content_for(:bsat_page_actions, page_actions.render(:large))
      content_for(:bsat_small_page_actions, page_actions.render(:small))
    end
  end
end
