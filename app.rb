require 'bundler' #require bundler
Bundler.require #loads all the gems

#build the web server for Phamazon!
#HAS TO BE A STRING!!!!!

get '/' do
  phamazon_product = {
    :name => 'New keyboard',
    :description => 'Generic keyboard',
    :price => '4.99'
  }.to_json
end

not_found do
  {
    :message => 'The resource you requested could not be found.'
  }.to_json
end
