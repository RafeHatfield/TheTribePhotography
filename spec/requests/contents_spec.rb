require 'spec_helper'

describe "contents" do

  let(:base_title) { "The Tribe Photography" }

  describe "Home page" do
    
    before { visit home_path }

    it "should have the h1 'The Tribe Photography'" do
      page.should have_selector('span', :text => 'The Tribe Photography')
    end

    it "should have the base title" do
      page.should have_selector('title',
                        :text => "#{base_title}")
    end

    it "should not have a custom page title" do
      page.should_not have_selector('title', :text => '| Home')
    end
  end

  describe "contact page" do
    
    before { visit contact_path }

    it "should have the h1 'Contact'" do
      page.should have_selector('h1', :text => 'Contact')
    end

    it "should have the title 'Contact'" do
      page.should have_selector('title',
                        :text => "#{base_title} | Contact")
    end
  end

  describe "About page" do
    
    before { visit about_path }

    it "should have the h1 'About'" do
      page.should have_selector('h1', :text => 'About')
    end

    it "should have the title 'About Us'" do
      page.should have_selector('title',
                    :text => "#{base_title} | About")
    end
  end
  
  describe "Gallery page" do
    
    before { visit gallery_path }

    it "should have the h1 'Gallery'" do
      page.should have_selector('h1', :text => 'Gallery')
    end

    it "should have the title 'Gallery'" do
      page.should have_selector('title',
                    :text => "#{base_title} | Gallery")
    end
  end
end