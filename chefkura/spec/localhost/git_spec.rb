require 'spec_helper'

describe command('git --version')do
  it "version > 1.8" do
    # TODO: 1.8以上にしたい
    should return_stdout /git version 1\.8/
  end
end
