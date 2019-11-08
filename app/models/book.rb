class Book < ApplicationRecord
	belongs_to :user
	has_many :book_categories
	has_many :categories, through: :book_categories
	enum status: [:available, :unavailable]
	validates :name, presence: true
	validates :author, presence: true
	validates :released_date, presence: true
	scope :available, ->{ where(status: "available")}
end
