

require ::File.join ::File.dirname(__FILE__), "..", "libraries", "shell"
describe "library" do
  describe "bash" do
  
    let(:bash) { Bash.new }
    describe "export" do
      it "should export value foo is baa " do
        expect(bash.export("foo","baa")).to eq 'export foo=baa'
      end

      it "should whitespace item is escaped" do
        expect(bash.export("foo","baa baz")).to eq 'export foo="baa baz"'
      end

      it "should add $PATH" do
        paths = ["/usr/local/bin", "~/bin/"]
        actual = bash.add_path(paths)
        expect(actual).to eq 'export PATH=/usr/local/bin:~/bin/:$PATH'
        expect(paths).to eq ["/usr/local/bin", "~/bin/"]
      end
    end

  end

  describe "fish" do
    let(:fish) { Fish.new }
    it "should export value foo is baa " do
      expect(fish.export("foo","baa")).to eq 'SET foo baa'
    end

    it "should add $PATH" do
      paths = ["/usr/local/bin", "~/bin/"]
      actual = fish.add_path(paths)
      expect(actual).to eq 'SET PATH /usr/local/bin ~/bin/ $PATH'
      expect(paths).to eq ["/usr/local/bin", "~/bin/"]
    end
  end
end