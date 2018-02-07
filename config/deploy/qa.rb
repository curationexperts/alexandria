# frozen_string_literal: true

set :stage, :qa
set :rails_env, "production"
server "qa-alexandria.curationexperts.com",
       user: "deploy",
       roles: [:web, :app, :db, :resque_pool]
