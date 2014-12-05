require 'rails_helper'

RSpec.describe Tweet, :type => :model do
  before do
    @tweet = Tweet.new(content: "Lorem ipsum")
  end

  it { should respond_to(:content) }

  describe "with blank content" do
    before { @tweet = " " }
    it { should_not be_valid }
  end

  describe "with content that is too long" do
    before { @tweet = "a" * 141 }
    it { should_not be_valid }
  end
end
