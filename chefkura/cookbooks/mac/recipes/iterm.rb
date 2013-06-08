userdir = File.expand_path("~/", __FILE__)
remote_file "#{userdir}/tmp/monokai.itermcolors" do
  source "https://raw.github.com/dawnerd/monokai-iterm/master/monokai.itermcolors"
end