
```
berks install
```
```
chef-apply cookbooks/sublime/recipes/default.rb
```
```
chef-solo -c solo.rb -j nodes/default.json
```

chef-solo -c solo.rb -o shellconf


https://github.com/opscode/chef/pull/676