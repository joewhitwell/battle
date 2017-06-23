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
      visit ('/')
      fill_in "Player1", :with => "Joe"
      click_on 'Go fight'
      expect(page).to have_content 'Joe'
    end
  end
end

describe "View hit points" do
  feature "see hitpoints" do
    scenario "view the hitpoints of a player" do
      visit ('/fight')
      expect(page).to have_content 'HP:100'
    end
  end
end



# fill_in 'Title', with: 'I love Rails!'
