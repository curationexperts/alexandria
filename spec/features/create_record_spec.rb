require 'rails_helper'

feature 'Record Creation:' do

  context 'an admin user' do
    let(:admin) { create :admin }

    before do
      AdminPolicy.ensure_admin_policy_exists
      sign_in admin
    end

    scenario 'creates a new record' do
      visit catalog_index_path
      click_link 'Create a new record'
      select 'Group', from: 'type'
      click_button 'Next'
      title = 'My New Group'
      fill_in 'Foaf name', with: title
      expect { click_button 'Save' }.to change { Group.count }.by(1)
      expect(page).to have_content title
    end
  end
end
