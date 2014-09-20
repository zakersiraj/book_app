require 'spec_helper'

describe "Home Page" do

  subject { page }

  before  { visit root_path }

  it { should have_selector('h1',     text: 'Welcome to Liyana Siraj Book List Page') }
  it { should_not have_selector 'title', text: '| Home' }

end
