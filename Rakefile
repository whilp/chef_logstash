require 'rake'
require 'rake/testtask'
require 'tailor/rake_task'

task :default => 'test:quick'

namespace :test do

  Tailor::RakeTask.new

  Rake::TestTask.new do |t|
    t.name = :minitest
    t.test_files = Dir.glob('test/spec/**/*_spec.rb')
  end

  begin
    require 'kitchen/rake_tasks'
    Kitchen::RakeTasks.new
  rescue LoadError
    puts '>>>>> Kitchen gem not loaded, omitting tasks' unless ENV['CI']
  end

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
