base_url = "http://#{request.host_with_port}"

@lands.each do |land|
  xml.url do
    xml.loc base_url+(land_path(land))
  end

end