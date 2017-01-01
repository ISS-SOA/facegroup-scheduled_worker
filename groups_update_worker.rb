require 'http'

res = HTTP.get('https://facegroup-api.herokuapp.com')

puts res.parse

## Run during dev/test using:
# docker run --rm -it -v "$PWD":/worker -w /worker soumyaray/ruby-http:2.3.1 ruby groups_update_worker.rb
