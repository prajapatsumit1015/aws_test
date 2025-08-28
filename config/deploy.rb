

# config valid for current version and patch releases of Capistrano
lock "~> 3.19.2"
set :rbenv_ruby, '3.2.0'
set :application, "aws_test"
set :repo_url, 'git@github.com:prajapatsumit1015/aws_test.git'
set :deploy_to, '/home/deploy/aws_test'
set :use_sudo, true
set :branch, 'master'
set :linked_files, %w{config/master.key config/database.yml}
set :rails_env, 'production'
set :linked_files, %w{config/database.yml config/master.key}
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

set :keep_releases, 3
set :keep_assets, 3
set :rbenv_type, :user

set :db_local_clean, true
set :db_remote_clean, true

namespace :deploy do
  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :publishing, 'deploy:restart'
  after :finishing, 'deploy:cleanup'
end