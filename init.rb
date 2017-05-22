require 'redmine'
require_dependency 'redmine_mermaid/hooks'


Redmine::Plugin.register :redmine_mermaid do
  name 'Redmine Mermaid plugin'
  author 'Yuji Sato'
  description 'This is a mermaid.js plugin for Redmine'
  version '0.0.1'
  url 'https://github.com/styz/redmine_mermaid'
  author_url 'https://github.com/styz'

  Redmine::WikiFormatting::Macros.register do
    desc 'Wiki/Issues mermaid'
    macro :mermaid do |obj, args, text|
      content_tag('div', text, :class => 'mermaid')
    end
  end
end
