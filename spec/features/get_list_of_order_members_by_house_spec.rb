require 'rails_helper'

describe 'As a user' do
  describe 'when I visit /' do
    describe 'and I select Gryffindor from the available houses' do
      it 'returns a list of Order members and their information' do
        visit root_path

        select 'Gryffindor', from: :house

        click_button 'Search For Members'

        expect(current_path).to eq(search_path)

        expect(page).to have_content('This house has 21 members in the Order of the Phoenix.')

        expect(page).to have_css('.character', count: 21)

        within('.character').first do
          expect(page).to have_css('.name')
          expect(page).to have_css('.role')
          expect(page).to have_css('.house')
          expect(page).to have_css('.patronus')
        end
      end
    end
  end
end
