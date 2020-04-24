require 'rspec/core'
require 'rails_helper'
require 'spec_helper'


#to run bonus tests enter: rspec ./spec/BonusTest.rb 

#verify that admin panel is accesible to admins users
RSpec.describe "AdminPanel", :type => :feature do
    context "submit the correct email/password combination" do
        it "redirects you to the admin dashboard" do
            visit 'admin/login'
            fill_in 'Email', with: 'admin@example.com'
            fill_in 'Password', with: 'password' do
            expect(page).to have_text('Dashboard')
            end
        end
    end
end 

#elevator slaps playlist
RSpec.describe "ambience", :type => :feature do
    context "test to load playlist" do
     it "gets music from sound cloud " do
        visit 'ambience'
        expect(page).to have_content "Elevator Slaps"
        
        end
    end
end 
#elevator music playlist
RSpec.describe "ambience", :type => :feature do
    context "test to load playlist" do
     it "gets music from sound cloud " do
        visit 'ambience'
        expect(page).to have_content "Elevator Music"
        
       
        end
    end
end 
#elevator jazz playlist
RSpec.describe "ambience", :type => :feature do
    context "test to load playlist" do
     it "gets music from sound cloud " do
        visit 'ambience'
        expect(page).to have_content "Elevator Jazz"
       
        end
    end
end
#make a user
describe "User", :type => :feature do
    context "enter information to register" do
        it "redirects to home page on sucessful login/outs" do
            visit 'users/sign_up'
            fill_in 'Email', with: 'Signuptest@example.com'
            fill_in 'Password', with: 'Password1@' do
            expect(page).to have_text('Rocket Elevators')
            end
        end
    end
end



