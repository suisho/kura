require 'chefspec'


describe 'dotfiles::default' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'dotfiles::default' }
  it 'should do something' do
    pending 'Your recipe examples go here.'
  end
end


