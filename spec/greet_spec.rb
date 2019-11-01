require 'rails_helper'

RSpec.describe 'Greet Viewer', type: :feature do
	scenario 'home page' do
		visit root_path
		expect(page).to have_content('Hello')
	end
end