def sign_in_and_play
  visit ('/')
  fill_in "Player1", :with => "Joe"
  fill_in "Player2", :with => "Roger"
  click_on 'Go fight'
end
