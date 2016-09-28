set :deploy_to, "/services/homepage/"
if(branch = ENV['BRANCH'])
  set :branch, branch
else
  set :branch, 'master'
end
set :vhost, 'dev.extension.org'
set :deploy_server, 'dev.aws.extension.org'
server deploy_server, :app, :web, :db, :primary => true
set :port, 22
