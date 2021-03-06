describe "Name input" do
  feature "form exists" do
    scenario "contains a player one field signifying name input form" do
      visit ('/')
      expect(page).to have_content 'Player 1'
      expect(page).to have_content 'Player 2'
    end
  end
end

describe "Render name" do
  feature "post names to /fight page" do
    scenario "Enter name, and view on fight page" do
      sign_in_and_play
      expect(page).to have_content 'Joe'
    end
  end
end

describe "View hit points" do
  feature "see hitpoints" do
    scenario "view the hitpoints of a player" do
      sign_in_and_play
      expect(page).to have_content 'HP:100'
    end
  end
end

describe "Confirmation message" do
  feature "should confrim that player 1 attacked player 2" do
    scenario "when the Play button is clicked" do
      sign_in_and_play
      click_button('Attack')
      expect(page).to have_content 'Player 1 attacked Player 2'
    end
  end
end



# fill_in 'Title', with: 'I love Rails!'
