require 'spec_helper'

describe "contents" do

  let(:base_title) { "The Tribe Photography" }
  subject { page }

  describe "Home page" do
    
    before { visit home_path }

    it { should have_selector('span', :text => 'The Tribe Photography') }
    it { should have_selector('title', :text => full_title('')) }
    it { should_not have_selector('title', :text => '| Home') }
  end

  describe "contact page" do
    
    before { visit contact_path }

    it { should have_selector('h1', :text => 'Contact') }
    it { should have_selector('title', :text => full_title('Contact')) }
  end

  describe "About page" do
    
    before { visit about_path }

    it { should have_selector('h1', :text => 'About') }
    it { should have_selector('title', :text => full_title('About')) }
  end
  
  describe "Gallery page" do
    
    before { visit gallery_path }

    it { should have_selector('h1', :text => 'Gallery') }
    it { should have_selector('title', :text => full_title('Gallery')) }
  end
end