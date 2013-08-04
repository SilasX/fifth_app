require 'spec_helper'

describe "StaticPages" do

  let(:prefix) { "Sample App" }
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Home')
    end

    it "should have variable title" do
      visit '/static_pages/home'
      expect(page).to have_title("#{prefix} | Home")
    end
  end

  describe "Help Page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have variable title" do
      visit '/static_pages/help'
      expect(page).to have_title("#{prefix} | Help")
    end
  end

  describe "About Page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have variable title" do
      visit '/static_pages/about'
      expect(page).to have_title("#{prefix} | About")
    end
  end
end
