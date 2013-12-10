# Staging

set :user, 'ec2-user'
set :application, "SolrServer"
set :hostname, "aws-master"
set :rails_env, 'production'
set :deploy_to, "/SOLR/#{application}"
ssh_options[:keys] = ["/Users/xinghao/aws-ec2/tracename-us.pem"]


set :db_type, "master"

role :app, "ec2-107-20-25-72.compute-1.amazonaws.com"
role :web, "ec2-107-20-25-72.compute-1.amazonaws.com"
role :db,  "ec2-107-20-25-72.compute-1.amazonaws.com", :primary => true

set :branch do
  default_tag = `git tag -l #{rails_env}* `.split("\n").last
  tag = Capistrano::CLI.ui.ask "Please enter the tag you would like to deploy to #{rails_env} (make sure the tag has been pushed first): [#{default_tag}] "
  tag = default_tag if tag.empty?
  tag
end
