source "https://supermarket.getchef.com"

metadata :path => 'site-cookbooks/al-default'

Dir.glob(File.expand_path('../site-cookbooks/*', __FILE__)).each do |path|
  metadata :path => path unless path.match(/al-default$/)
end

# Add cookbooks that added directly (not mentioned as dependency in metadata)
