require 'rails_helper'



describe '#show' do
  before(:each) { get :show, params: { id: user } }
end
