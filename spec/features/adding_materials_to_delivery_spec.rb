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
      fill_in "Number", with: "XYZ"
      click_button "Create"
      click_link "ORDER XYZ"
      click_link "Edit"
      find("#order_material_ids").select(value='WNP/SWCL001/010')
      find("#order_material_ids").select(value='ZDW/EOWW005/010')
      click_on "Save changes"
      expect(page).to have_content "WNP/SWCL001/010"
      expect(page).to have_content "ZDW/EOWW005/010"
    end
  end
end
