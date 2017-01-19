

SitemapGenerator::Sitemap.default_host = 'http://www.alexandrecordani.com'
SitemapGenerator::Sitemap.create do
  add '/home', :changefreq => 'weekly', :priority => 0.9
  add '/sales'
  	add sales_path, :priority => 0.8, :changefreq => 'weekly'
    Sale.find_each do |sale|
      add sale_path(sale), :lastmod => sale.updated_at
    end
  add '/prices'
  	add prices_path, :priority => 0.8, :changefreq => 'weekly'
    Price.find_each do |price|
      add price_path(price), :lastmod => price.updated_at
    end

end
