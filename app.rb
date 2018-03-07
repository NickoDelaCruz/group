require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }



get('/') do
  erb(:home)
end

get('/brand_main') do
  @brands = Brand.all
  erb(:brand_main)
end

post('/brand_main') do
  name = params['name']
  price = (params['price'].to_i)*100
  brand = Brand.find_or_create_by({:name => name, :price => price})
  redirect("/brand_main/".concat(brand.id.to_s))
end

get('/brands/:id') do
  @brand = Brand.find(params['id'].to_i)
  erb(:brand)
end

get('/brands/:id') do
  @brand = Brand.find(params['id'].to_i)
  erb(:brand)
end

# get('/store_main') do
#   erb(:store_main)
# end
