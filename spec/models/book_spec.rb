require 'rails_helper'
describe Book do
  describe 'instance method' do
    it 'can average ratings' do
      book = Book.create!(title: 'To Kill A Mockingbird')
      user = User.create!(name: 'Jimmy')
      review1 = user.reviews.create!(content: 'This book is great!', rating: 2, book_id: book.id)
      review2 = user.reviews.create!(content: 'This book is great!', rating: 5, book_id: book.id)
      review2 = user.reviews.create!(content: 'This book is great!', rating: 3, book_id: book.id)
      require 'pry'; binding.pry
      average = book.reviews.average_rating

      expect(average).to eq(3.33)
    end
  end
end
