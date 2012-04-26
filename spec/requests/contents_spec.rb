require 'spec_helper'

describe "contents" do

  let(:base_title) { "The Tribe Photography" }
  subject { page }

  shared_examples_for "all standard pages" do
    it { should have_selector('h1',    text: heading) }
    it { should have_selector('title', text: full_title(page_title)) }
  end

  describe "Home page" do
    
    before { visit home_path }

    it { should have_selector('span', :text => 'The Tribe Photography') }
    it { should have_selector('title', :text => full_title('')) }
    it { should_not have_selector('title', :text => '| Home') }
  end

  describe "contact page" do
    
    before { visit contact_path }
    
    let(:heading) { 'Contact' }
    let(:page_title) { 'Contact' }

    it_should_behave_like "all standard pages"
  end

  describe "About page" do
    
    before { visit about_path }
    
    let(:heading) { 'About' }
    let(:page_title) { 'About' }

    it_should_behave_like "all standard pages"
  end
  
  describe "Gallery page" do
    
    before { visit gallery_path }
    
    let(:heading) { 'Gallery' }
    let(:page_title) { 'Gallery' }

    it_should_behave_like "all standard pages"
  end
end