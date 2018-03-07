require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }



get('/') do
  erb(:home)
end

get('/brand_main') do
  erb(:brand_main)
end

get('/store_main') do
  erb(:store_main)
end
