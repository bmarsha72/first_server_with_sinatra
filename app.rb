require 'bundler' #require bundler
Bundler.require #loads all the gems

#build the web server for Phamazon!

get '/' do
  phamazon_product = {
    :name => 'new keyboard',
    :description => 'generic keyboard',
    :price => '4.99'
  }.to_json
end

notfound do
  {
    :message => 'the resource you requested could not be found.'
  }.to_json
end
