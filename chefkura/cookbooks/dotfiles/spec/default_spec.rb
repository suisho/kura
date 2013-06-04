require 'chefspec' 
require ::File.join ::File.dirname(__FILE__), "..", "libraries", "settings"


describe 'dotfiles::default' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'dotfiles::default' }
  it 'should do something' do
    pending 'Your recipe examples go here.'
  end
end

describe "library" do
  describe "bash" do
  
    let(:bash) { Bash.new }
  
    it "should export value foo is baa " do
      expect(bash.export("foo","baa")).to eq 'export foo=baa'
    end

    it "should add $PATH" do
      paths = ["/usr/local/bin", "~/bin/"]
      actual = bash.add_path(paths)
      expect(actual).to eq 'export PATH=/usr/local/bin:~/bin/:$PATH'
      expect(paths).to eq ["/usr/local/bin", "~/bin/"]

    end
  
  end
end