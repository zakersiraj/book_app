require 'spec_helper'

describe Book do
  before { @book = Book.new( name: "Zaker Siraj", uthor: "Example Author", title: "Example Book Title", password: "test", password_confirmation: "test") }

    subject { @book }

    it { should respond_to(:author) }
    it { should respond_to(:name) }
    it { should respond_to(:title) }
    it { should respond_to(:password_digest) }
    it { should respond_to(:password) }
    it { should respond_to(:password_confirmation) }

    describe "when book title is already in the database" do
    before do
      book_with_same_title = @book.dup
      book_with_same_title.save
    end

    it { should_not be_valid }
  end
end
