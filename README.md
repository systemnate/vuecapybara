# Testing Vue with Capybara

The purpose of this app is to demonstrate a problem with getting a feature spec in RSpec + Capybara working
with a Vue component.  The application is super simple: there is an Employee model with attributes of name and age.

The Vue component then queries /employees.json to get a list of the employees and display them in a table.

The request is made using axios.

I am unsure of how to get the data to show up in the spec, `/spec/features/user_views_employees_spec.rb`.

Here is the spec:

```
require 'rails_helper'

feature 'user views employee', js: true do
  scenario 'successfully' do
    employee = FactoryGirl.create(:employee, name: 'Nate')

    visit root_path

    expect(page).to have_content employee.name
  end
```

I have tried various methods of waiting including setting `Capybara.default_max_wait_time = 10` and various forms of `sleep(5)` after visiting `root_path`.
