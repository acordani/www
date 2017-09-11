base_url = "http://#{request.host_with_port}"

@estimations.each do |estimation|
  xml.url do
    xml.loc base_url+(estimation_path(estimation))
  end

end