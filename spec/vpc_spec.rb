require 'spec_helper'

describe vpc('DefaultVPC') do
  it { should exist }
  it { should be_available }
  its(:cidr_block) { should eq '172.31.0.0/16' }
end
