require 'spec_helper'

describe "contents" do

  describe "Home page" do

    it "should have the h1 'The Tribe Photography'" do
      visit '/content/home'
      page.should have_selector('h1', :text => 'The Tribe Photography')
    end

    it "should have the title 'Home'" do
      visit '/content/home'
      page.should have_selector('title',
                        :text => "The Tribe Photography | Home")
    end
  end

  describe "contact page" do

    it "should have the h1 'Contact'" do
      visit '/content/contact'
      page.should have_selector('h1', :text => 'Contact')
    end

    it "should have the title 'Contact'" do
      visit '/content/contact'
      page.should have_selector('title',
                        :text => "The Tribe Photography | Contact")
    end
  end

  describe "About page" do

    it "should have the h1 'About'" do
      visit '/content/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      visit '/content/about'
      page.should have_selector('title',
                    :text => "The Tribe Photography | About Us")
    end
  end
end