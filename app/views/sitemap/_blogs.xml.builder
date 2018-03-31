base_url = "http://#{request.host_with_port}"

@blogs.each do |blog|
  xml.url do
    xml.loc base_url+(blog_path(blog))
  end

end