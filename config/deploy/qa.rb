# frozen_string_literal: true

set :stage, :qa
set :rails_env, "production"
set :repo_url, "https://github.com/curationexperts/alexandria.git"
server "qa-alexandria.curationexperts.com",
       user: "deploy",
       roles: [:web, :app, :db, :resque_pool]
