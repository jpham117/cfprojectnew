if Rails.env.production?
    $redis = Redis.new(url: ENV["REDIS_URL"])  # REDIS_URL: redis://h:pa74e34c129ad3a189c94263e03b305e74b7186e565ee1ba81fbe7115ed5fda12@ec2-52-21-74-44.compute-1.amazonaws.com:30899
else
    $redis = Redis.new(host: 'localhost', port: 6379)
end