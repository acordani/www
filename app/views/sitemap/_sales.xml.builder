base_url = "http://#{request.host_with_port}"

@sales.each do |sale|
  xml.url do
    xml.loc base_url+(sale_path(sale))
  end

end