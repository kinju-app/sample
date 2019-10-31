class Book < ApplicationRecord
	belongs_to :user
	has_many :book_categories
	has_many :categories, through: :book_categories
	validates :name, presence: true
	validates :author, presence: true
	validates :released_date, presence: true

end
