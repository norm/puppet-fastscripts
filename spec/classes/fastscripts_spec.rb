require 'spec_helper'

describe 'fastscripts' do
  it do
    should contain_package('FastScripts').with({
      :provider => 'compressed_app',
      :source   => 'http://www.red-sweater.com/fastscripts/FastScripts2.6.5.zip',
    })
  end
end
