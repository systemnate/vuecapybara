require 'rails_helper'

feature 'user views employee', js: true do
  scenario 'successfully' do
    employee = FactoryGirl.create(:employee, name: 'Nate')

    visit root_path

    expect(page).to have_content employee.name
  end
end
