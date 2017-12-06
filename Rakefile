# frozen_string_literal: true

# Add your own tasks in files placed in lib/tasks ending in .rake, for
# example lib/tasks/capistrano.rake, and they will automatically be
# available to Rake.

require File.expand_path("../config/environment", __FILE__)

require "importer"
require "ss"
require "resque/tasks"
require "resque/pool/tasks"

Rails.application.load_tasks

# Get rid of the default task (was spec)
task default: []
Rake::Task[:default].clear

task default: :ci
