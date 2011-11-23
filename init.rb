require 'redmine'

Redmine::Plugin.register :redmine_issue_confirmation do
  name 'Redmine Issue Confirmation plugin'
  author 'MAEDA, Go'
  description 'show confirmation dialog when create/update/delete a issue.'
  version '0.0.1'
  url 'https://github.com/vividtone/redmine_issue_confirmation'
  author_url 'http://www.facebook.com/MAEDA.Go'
end
