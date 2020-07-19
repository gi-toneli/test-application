require 'rails_helper'

RSpec.describe 'Find results scenarios', type: :system do
  describe 'simple filter' do
    before do
      visit "/"
    end

    it 'find multiple power generators' do
      fill_in "q_name_or_description_cont",	with: "mono" 
      click_on "simple-form-submit"
      expect(page).to have_content('mono')
      expect(page).to have_no_content('TRIFÁSICO')
    end

    it 'find one power generators' do
      fill_in "q_name_or_description_cont",	with: "CELLS MONO PERC" 
      click_on "simple-form-submit"
      expect(page).to have_content('CELLS')
    end
    
    it 'dont find results' do
      fill_in "q_name_or_description_cont",	with: "Portal Solar" 
      click_on "simple-form-submit"
      expect(page).to have_no_content('CELLS')
    end
  end

  describe 'advanced filters' do
    before(:each) do
      visit "/"
      find(:css, '#advancedSearch').click
    end

    it 'find multiple power generators' do
      fill_in "q_name_or_description_or_manufacturer_cont",	with: "mono" 
      click_on "advanced-form-submit"
      expect(page).to have_content('mono')
      expect(page).to have_no_content('TRIFÁSICO')
    end

    it 'find one power generators' do
      fill_in "q_name_or_description_or_manufacturer_cont",	with: "CELLS MONO PERC" 
      click_on "advanced-form-submit"
      expect(page).to have_content('CELLS')
    end
    
    it 'dont find results' do
      create :power_generator, :FRONIUS
      fill_in "q_name_or_description_or_manufacturer_cont",	with: "Portal Solar" 
      click_on "advanced-form-submit"
      expect(page).to have_no_content('CELLS')
      expect(page).to have_content('Portal Solar')
    end

    it 'dont find results with multiple filters' do
      fill_in "q_name_or_description_or_manufacturer_cont",	with: "Portal Solar" 
      fill_in "q_price_lteq",	with: "15000" 
      click_on "advanced-form-submit"
      expect(page).to have_no_content('CELLS')
    end
  end
end

