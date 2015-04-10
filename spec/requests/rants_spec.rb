require 'rails_helper'

describe 'rants' do

  describe '#index' do
    it 'returns all rants' do
      3.times do
        create_rant
      end

      get '/rants'
      expect(response).to be_success
      expect(json['rants'].length).to eq(3)
    end
  end

end
