# Staging

set :user, 'ss8558'
set :application, "SolrServer"
set :hostname, "aws-master"
set :rails_env, 'production'
set :deploy_to, "/SOLR/#{application}"



set :db_type, "master"

role :app, "66.85.152.90"
role :web, "66.85.152.90"
role :db,  "66.85.152.90", :primary => true

set :branch do
  default_tag = `git tag -l #{rails_env}* `.split("\n").last
  tag = Capistrano::CLI.ui.ask "Please enter the tag you would like to deploy to #{rails_env} (make sure the tag has been pushed first): [#{default_tag}] "
  tag = default_tag if tag.empty?
  tag
end
