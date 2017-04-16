# config/initializers/will_paginate.rb
#
# This extension code was written by Isaac Bowen, originally found
# at http://isaacbowen.com/blog/using-will_paginate-action_view-and-bootstrap/

require 'will_paginate/view_helpers/action_view'

module WillPaginate
  module ActionView
    def will_paginate(collection = nil, options = {})
      options, collection = collection, nil if collection.is_a? Hash
      # Taken from original will_paginate code to handle if the helper is not passed a collection object.
      collection ||= infer_collection_from_controller
      options[:renderer] ||= BootstrapLinkRenderer
      super.try :html_safe
    end

    class BootstrapLinkRenderer < LinkRenderer
      protected

      def html_container(html)
        tag :div, tag(:ul, html, :class => "pagination"), container_attributes
      end

      def page_number(page)
        tag :li, link(page, page, :rel => rel_value(page)), :class => ('active' if page == current_page)
      end

      def gap
        tag :li, link('&hellip;'.html_safe, '#'), :class => 'disabled'
      end

      def previous_or_next_page(page, text, classname)
        tag :li, link(text, page || '#'), :class => [(classname[0..3] if  @options[:page_links]), (classname if @options[:page_links]), ('disabled' unless page)].join(' ')
      end
    end

    class Bootstrap4LinkRenderer < LinkRenderer
      protected
      def html_container(html)
        tag :nav, tag(:ul, html, :class => "pagination"), container_attributes
      end

      def page_number(page)
        item_class = if(page == current_page)
          'active page-item'
        else
          'page-item'
        end

        tag :li, link(page, page, :rel => rel_value(page), :class => 'page-link'), :class => item_class
      end

      def gap
        tag :li, link('&hellip;'.html_safe, '#', :class => 'page-link'), :class => 'page-item disabled'
      end

      def previous_or_next_page(page, text, classname)
        tag :li, link(text, page || '#', :class => 'page-link'), :class => [(classname[0..3] if  @options[:page_links]), (classname if @options[:page_links]), ('disabled' unless page), 'page-item'].join(' ')
      end
    end
  end
end
