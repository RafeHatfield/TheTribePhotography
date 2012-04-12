require 'spec_helper'

describe "contents" do

  let(:base_title) { "The Tribe Photography" }

  describe "Home page" do

    it "should have the h1 'The Tribe Photography'" do
      visit '/content/home'
      page.should have_selector('span', :text => 'The Tribe Photography')
    end

    it "should have the title 'Home'" do
      visit '/content/home'
      page.should have_selector('title',
                        :text => "#{base_title} | Home")
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
                        :text => "#{base_title} | Contact")
    end
  end

  describe "About page" do

    it "should have the h1 'About'" do
      visit '/content/about'
      page.should have_selector('h1', :text => 'About')
    end

    it "should have the title 'About Us'" do
      visit '/content/about'
      page.should have_selector('title',
                    :text => "#{base_title} | About")
    end
  end
  
  describe "Gallery page" do

    it "should have the h1 'Gallery'" do
      visit '/content/gallery'
      page.should have_selector('h1', :text => 'Gallery')
    end

    it "should have the title 'Gallery'" do
      visit '/content/gallery'
      page.should have_selector('title',
                    :text => "#{base_title} | Gallery")
    end
  end

end