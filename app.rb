require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }



get('/') do
  erb(:home)
end

get('/home') do
  erb(:home)
end

get('/store_main') do
  @stores = Store.all
  erb(:store_main)
end

post('/store_main') do
  name = params['name']
  @store = Store.find_or_create_by({:name => name})
  redirect("/store_main/".concat(@store.id.to_s))
end

get('/store_main/:id') do
  @store = Store.find(params['id'].to_i)
  @brands = Brand.all
  erb(:store)
end

get('/store_main/:id/edit') do
  @store = Store.find(params['id'].to_i)
  erb(:store_edit)
end

patch('/store_main/:id') do
  name = params['name']
  @store = Store.find(params['id'].to_i)
  @store.update({:name => name})
  @stores = Store.all
  @brands = Brand.all
  erb(:store)
end

delete('/store_main/:id') do
  @store = Store.find(params['id'].to_i)
  @store.destroy
  @stores = Store.all
  @brands = Brand.all
  erb(:store_main)
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

get('/brand_main/:id') do
  @brand = Brand.find(params['id'].to_i)
  erb(:brand)
end

post('/store_main/:id/brands') do
  brand = Brand.find(params['brand'].to_i)
  store = Store.find(params['id'].to_i)
  store.brands << brand unless store.brands.include?(brand)
  redirect("/store_main/".concat(store.id.to_s))
end
