require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Your opinion matters'" do
      visit '/static_pages/home'
      page.should have_content('Your opinion matters')
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
  end

  describe "Privacy page" do

    it "should have the content 'Privacy Policy'" do
      visit '/static_pages/privacy'
      page.should have_content('Privacy Policy')
    end
  end
end