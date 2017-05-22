module RedmineMermaid
  class Hook < Redmine::Hook::ViewListener
    def view_layouts_base_html_head(context = {})
      tags = javascript_include_tag 'mermaid.min.js', plugin: 'redmine_mermaid'
      tags += stylesheet_link_tag 'mermaid.css', plugin: 'redmine_mermaid'
      tags
    end
  end
end
