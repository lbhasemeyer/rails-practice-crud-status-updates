require 'rails_helper'

  feature "updates" do
    scenario "user creates an update" do
      visit root_path
      expect(page).to have_no_content("Kittens! So soft and wonderful!")
      expect(page).to have_no_content("catlovr1944")
      expect(page).to have_no_content("1000001")
      click_on "Create Update"
      click_on "Create Update"
      expect(page).to have_content("Status can't be blank")
      expect(page).to have_content("User can't be blank")
      expect(page).to have_content("Likes can't be blank")

      fill_in "Status", with: "Kittens! So soft and wonderful!"
      fill_in "User", with: "catlovr1944"
      fill_in "Likes", with: "1000001"
      click_on "Create Update"
      expect(page).to have_content("Kittens! So soft and wonderful!")
      expect(page).to have_content("catlovr1944")
      expect(page).to have_content("1000001")
      visit root_path
      expect(page).to have_content("Kittens! So soft and wonderful!")
      expect(page).to have_content("catlovr1944")
      expect(page).to have_content("1000001")
    end
  end
