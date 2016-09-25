feature "Delivering materials" do
  context "no delivery order was created" do
    scenario "agencies can add their materials delivery order" do
      visit "/materials"
      click_link "Add Advertising Material to Honeycomb database"
      fill_in "material_clock", with: "WNP/SWCL001/010"
      click_button "Submit material"
      click_link "Add Advertising Material to Honeycomb database"
      fill_in "material_clock", with: "ZDW/EOWW005/010"
      click_button "Submit material"
      click_link "Create delivery order"
      find("#order_material_ids").select(value='WNP/SWCL001/010')
      find("#order_material_ids").select(value='ZDW/EOWW005/010')
      click_on "Create order"
      save_and_open_page
      expect(page).to have_content "WNP/SWCL001/010"
      expect(page).to have_content "ZDW/EOWW005/010"
    end
  end
end
