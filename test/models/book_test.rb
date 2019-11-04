require 'test_helper'

class BookTest < ActiveSupport::TestCase

	def setup
		@book = Book.new(name: "New Book")
		@user = User.create(username: "Name", email: "email@email.com", password: "password")		
	end

	test "category should be valid" do
		sign_in_as(@user,"password")
		assert @book.valid?
	end
end
