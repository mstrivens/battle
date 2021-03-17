require 'spec_helper'

# feature 'Testing infrastructure' do
#   scenario 'can run app and check page content' do
#     visit('/')
#     expect(page).to have_content 'Testing infrastructure working!'
#   end
# end

feature 'Testing enter name form' do
  scenario 'has a form for entering names' do
    visit('/')
    expect(page).to have_field ("name")
  end
  scenario 'has a submit button' do
    visit('/')
    expect(page).to have_button "submit"
  end
  scenario 'return the names to the user' do
    sign_in_and_play
    expect(page).to have_content "Max"
    expect(page).to_not have_content "submit"
  end
end

feature 'viewing players hit points' do
  scenario "i want to view player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content "Max: 100HP"
  end
end

feature 'attacking' do
  scenario 'there is an attack button' do
    sign_in_and_play
    expect(page).to have_button "Attack player 2"
  end
  scenario
end
