def sign_in_and_play
  visit('/')
  fill_in "player_1", with: "Max"
  fill_in "player_2", :with => "Scotty"
  click_on 'submit'
end
