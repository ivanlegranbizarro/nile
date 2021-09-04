require 'rails_helper'

describe 'Books API', type: :request do
  describe 'GET /books' do
    it 'returns all books' do

      FactoryBot.create(:book, title: '1Q84', author: 'Haruki Murakami')
      FactoryBot.create(:book, title: '1984', author: 'George Orwell')

      get '/api/v1/books'

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(2)
    end
  end

  describe 'POST /books' do
    it 'create a new book' do
      post '/api/v1/books', params: { book: {title: 'Confesiones de una máscara', author: 'Yukio Mishima'}}
    end
  end
end
