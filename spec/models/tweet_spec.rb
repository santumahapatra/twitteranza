require 'rails_helper'

RSpec.describe Tweet, :type => :model do

  it { is_expected.to respond_to(:content) }

  it 'validates that the content is not blank' do
    expect(Tweet.new( content: ' ' )).not_to be_valid
  end

  it 'validates that the content is less than 140 characters' do
    input_string = 'a' * 141
    expect(Tweet.new( content: input_string )).not_to be_valid
  end

  it 'allows content less than 140 characters' do
    expect(Tweet.new( content: 'abc' )).to be_valid
  end
end
