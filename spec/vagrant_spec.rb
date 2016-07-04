require "spec_helper_#{ENV['SPEC_TARGET_BACKEND']}"
require "brewcask_patch"

describe package('vagrant'), :if => os[:family] == 'darwin' do
  it { should be_installed.by('homebrew_cask') }
end

describe package('vagrant'), :if => os[:family] == 'debian' do
  it { should be_installed.by('apt') }
end

describe command('which vagrant') do
  its(:exit_status) { should eq 0 }
end
