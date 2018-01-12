require 'spec_helper'
describe 'hiet' do
  context 'with default values for all parameters' do
    it { should contain_class('hiet') }
  end
end
