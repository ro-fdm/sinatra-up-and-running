require 'sinatra'
helpers do
	def link(name)
		case name
		when :about then '/about'
		when :index then '/index'
		else "/page/#{name}"
		end
	end
end

get '/' do
	erb :index
end

get '/index.html' do
	redirect link(:index)
end

__END__

@@index

<body>
	<nav>
		<ul>
			<li><a href="<%= link(:index) %>">Index</a></li>
			<li><a href="<%= link(:about) %>">About</a></li>
			<li><a href="<%= link(:random) %>">Random</a></li>
		</ul>
	</nav>
</body>

