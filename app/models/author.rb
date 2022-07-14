class Author < ApplicationRecord
    has_many :book_authors
    has_many :books,through: p:book_authors
end
