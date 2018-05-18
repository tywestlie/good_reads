require 'rails_helper'

describe 'user visits the book show page' do
  it 'sees a book title' do
    book = Book.create!(title: 'To Kill A Mockingbird')

    visit book_path(book)

    expect(page).to have_content(book.title)
  end
end
