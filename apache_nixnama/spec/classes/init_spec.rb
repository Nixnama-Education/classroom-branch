require 'spec_helper'
describe 'apache_nixnama' do
  context 'with default values for all parameters' do
    it { should contain_class('apache_nixnama') }
  end
end
