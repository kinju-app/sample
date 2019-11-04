require 'rails_helper'

RSpec.describe 'Greet Viewer', type: :feature do

	scenario 'home page' do
		visit root_path
		expect(page.body).to have_content('Hello')
	end

	context "While Testing Hello" do
		it "It should display Log in" do
			visit root_pat
			expect(page).to have_content('Log in')
		end
		it "It should display Home" do
			visit root_path
			expect(page).to have_content('Home')
		end		

	end
end