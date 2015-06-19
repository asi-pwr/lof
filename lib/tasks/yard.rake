YARD::Rake::YardocTask.new do |t|
  t.files   = ['app/**.rb', 'lib/**/*.rb']
  t.options = []
  t.stats_options = ['--list-undoc']
end
