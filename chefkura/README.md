```
gem install chef berkshelf chefspec
gem install bundler --pre
```

```
berks install
```
```
chef-apply cookbooks/sublime/recipes/default.rb
```
```
chef-solo -c solo.rb -j nodes/default.json
```
```
chef-solo -c solo.rb -o shellconf
```
```
knife cookbook test dotfiles -o cookbook
```
```
rspec cookbooks/dotfiles
```
https://github.com/opscode/chef/pull/676
