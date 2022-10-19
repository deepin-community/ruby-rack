# -*- mode: ruby; coding: utf-8 -*-

require "rake/testtask"

desc "Run all the tests"
task default: :test

Rake::TestTask.new("test") do |t|
  t.libs << "test"
  t.test_files = FileList["test/**/*_test.rb", "test/**/spec_*.rb", "test/gemloader.rb"]
  t.warning = false
  t.verbose = true
end