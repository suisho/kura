file_cache_path           "/tmp/chef-solo"
file_backup_path           "/tmp/chef-solo-backup"
cookbook_path   [ File.expand_path("../cookbooks", __FILE__) ]
cache_options({
  :path => "/tmp/chef-solo/cache",
  :skip_expires => true
})

data_bag_path  File.expand_path("../cookbooks", __FILE__)