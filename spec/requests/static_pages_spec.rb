require 'spec_helper'

describe "Static pages" do
  
  describe "Home page" do
    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end
  
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', 
                      :title => "Ruby on Rails Tutorial Sampel App | Home")
    end
  end
  
  
  describe "Help page" do
    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
    
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                      :title => "Ruby on Rails Tutorial Sample App | Help")
    end
  end
  
  describe "About page" do
    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end
    
    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                      :title => "Ruby on Rails Tutorial Sample App | About Us")
    end                
  end
  
  describe "Contact page" do
    it "should have the h1 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
    end
    
    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('title',
                      :title => "Ruby on Rails Tutorial Sample App | Contact")
    end
  end
end
