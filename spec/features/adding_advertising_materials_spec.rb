xfeature "Adding advertising materials" do
  context "no advertising materials in database" do
    scenario "agencies can add their materials to Honeycomb" do
      visit "/materials"
      expect(page).to have_content "There are no advertising materials you could deliver"
      click_link "Add Advertising Material to Honeycomb database"
      fill_in "material_clock", with: "WNP/SWCL001/010"
      click_button "Submit material"
      expect(page).to have_content "WNP/SWCL001/010 successfully added to materials database"
    end
  end

  context "there are advertising materials in database" do
    scenario "agencies can not add duplicated materials to Honeycomb" do
      visit "/materials"
      click_link "Add Advertising Material to Honeycomb database"
      fill_in "material_clock", with: "WNP/SWCL001/010"
      click_button "Submit material"
      click_link "Add Advertising Material to Honeycomb database"
      fill_in "material_clock", with: "WNP/SWCL001/010"
      click_button "Submit material"
      expect(page).to have_content "WNP/SWCL001/010 clock has already been taken"
    end
  end
end
