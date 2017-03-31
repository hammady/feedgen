Aws.config[:credentials] = Aws::Credentials.new(ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY'])
Aws.config[:region] = ENV['AWS_REGION']
S3 = Aws::S3::Resource.new
S3_BUCKET = S3.bucket(ENV['S3_BUCKET'])