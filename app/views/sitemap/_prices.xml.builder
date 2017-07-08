base_url = "http://#{request.host_with_port}"

@prices.each do |price|
  xml.url do
    xml.loc base_url+(price_path(price))
  end

end