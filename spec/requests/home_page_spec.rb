require 'spec_helper'

describe "Home Page" do

  subject { page }

  before  { visit root_path }

  it { should have_selector('h1',     text: 'Welcome to Liyana Siraj Book List Page') }
  it { should_not have_selector 'title', text: '| Home' }

  describe "signup" do

    before {visit signup_path }

    let(:submit)  { "Create my account" }

    describe "with valid informaion" do
      before do
        fill_in "Name",          with: "Zaker Siraj"
        fill_in "Password",      with: "password"
        fill_in "Confirmation",  with: "password"
      end

    it "should create a user" do
      expect { click_button submit  }.to change(Book, :count).b(1)
    end
  end
end
