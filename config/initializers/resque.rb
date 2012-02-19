ENV["REDISTOGO_URL"] ||= "redis://redistogo:ecb8e43e5754edf6dad7a7e1be73724b@perch.redistogo.com:9854"

uri = URI.parse(ENV["REDISTOGO_URL"])
Resque.redis = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)
