require 'spec_helper'

	describe 'create product' do 
		
	context 'given a name and description' do 

		it 'should display the new course in the list of courses' do
			visit "/products/new"
			fill_in 'Name', with: 'Pallet'
			fill_in 'Description', with: "A full Pallet"
			click_button 'Create Product'

			expect(current_path).to eq '/products'
			expect(page).to have_content 'A full Pallet'
		end

	end

end