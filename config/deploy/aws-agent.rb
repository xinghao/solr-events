# Staging

set :user, 'ec2-user'
set :application, "peoplefinders_data_import"
set :hostname, "aws-agent"
set :rails_env, 'production'
set :deploy_to, "/www/rails_apps/#{application}"
ssh_options[:keys] = ["/Users/xinghao/aws-ec2/tracename-us.pem"]


set :db_type, "master"

role :app, "54.204.63.154"
role :web, "54.204.63.154"

set :branch do
  default_tag = `git tag -l #{rails_env}* `.split("\n").last
  tag = Capistrano::CLI.ui.ask "Please enter the tag you would like to deploy to #{rails_env} (make sure the tag has been pushed first): [#{default_tag}] "
  tag = default_tag if tag.empty?
  tag
end
