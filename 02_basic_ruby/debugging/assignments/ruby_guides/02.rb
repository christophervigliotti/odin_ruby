require 'pry-byebug'

Book = Struct.new(:title)

def find_book(title)
  books = []
  books << Book.new('Eloquent Ruby')

  match = books.find { |b| b.title == title }
  match = (match == nil) ? Book : match
end

book = find_book('Eloquent Ruby')
p book # This will print our book object

book = find_book('POODR')
p book # This will print nil

binding.pry

book.title # Guess what happens next!