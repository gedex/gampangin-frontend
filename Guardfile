guard 'rack' do
  watch('Gemfile.lock')
  watch('config.ru')
end

guard 'less', :all_on_start => true, :all_after_change => true, :output => 'tmp' do
	watch(%r{^less/(.+\.less)$})
end

# I just care with style.css
guard 'process', :name => 'cp style.css', :command => 'cp tmp/style.css public/css/style.css' do
	watch('tmp/style.css')
end

guard 'livereload' do
  watch(%r{public/.+\.(css|js|html)})
end
