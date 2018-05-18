require 'rails_helper'

describe 'user visits the book show page' do
  it 'sees a book title' do
    book = Book.create!(title: 'To Kill A Mockingbird')

    visit book_path(book)

    expect(page).to have_content(book.title)
  end

  it 'sees reviews for a book' do
    book = Book.create!(title: 'To Kill A Mockingbird')
    user = User.create!(name: 'Jimmy')
    review = user.reviews.create!(content: 'This book is great!', rating: 5, book_id: book.id)

    visit book_path(book)

    expect(page).to have_content(review.content)
    expect(page).to have_content(review.rating)
    expect(page).to have_content(review.user.name)
  end
end
