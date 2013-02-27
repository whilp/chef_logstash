require 'tailor/rake_task'
require 'kitchen/rake_tasks'

task :default => 'test:quick'

namespace :test do

  Tailor::RakeTask.new

  Kitchen::RakeTasks.new

  desc 'Run all of the quick tests.'
  task :quick do
    Rake::Task['test:tailor'].invoke
  end

  desc 'Run _all_ the tests. Go get a coffee.'
  task :complete do
    Rake::Task['test:tailor'].invoke
    Rake::Task['test:kitchen:all'].invoke
  end

end

namespace :release do

  task :update_metadata do
  end

  task :tag_release do
  end

end
