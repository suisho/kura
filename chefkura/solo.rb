file_cache_path          "/tmp/chef-solo"
file_backup_path         "/tmp/chef-solo-backup"
cookbook_path([
  File.expand_path("../cookbooks", __FILE__),
  File.expand_path("../vendor/cookbooks", __FILE__),
])
cache_options({
  :path => "/tmp/chef-solo/cache",
  :skip_expires => true
})

data_bag_path  File.expand_path("../cookbooks", __FILE__)

client_key     File.expand_path("../key/solo.pem", __FILE__)
