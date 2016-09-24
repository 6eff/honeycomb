feature "advertising_materials" do
  context "no advertising materials in database" do
    scenario "agencies can add their materials to Honeycomb" do
      visit "/materials"
      expect(page).to have_content "There are no advertising materials you could deliver"
      click_link "Add Advertising Material to Honeycomb database"
      fill_in "material_clock", with: "WNP/SWCL001/010"
      click_button "Submit resource"
      expect(page).to have_content "WNP/SWCL001/010 successfully added to materials database"
      expect(page).to have_select("material_clock", :options => ["WNP/SWCL001/010"])
    end
  end
end
