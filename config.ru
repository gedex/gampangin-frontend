use Rack::Static,
	:urls => ["/images", "/js", "/css"],
	:root => "public"

# Absolute path of the root app
@root = File.expand_path(File.join(File.dirname(__FILE__), 'public'))

run lambda { |env|
	req = Rack::Request.new(env)

	res = File.join(@root, req.path_info)
	index = File.join(res, 'index.html')
	ret = 200

	if File.directory?(res) and File.exists?(index)
		out = File.open(index, File::RDONLY)
	elsif File.exists?(res)
		out = File.open(res, File::RDONLY)
	else
		ret = 404
		out = File.open('public/404.html', File::RDONLY)
	end

	[
		ret,
		{
			'Content-Type' => 'text/html',
		},
		out
	]
}
