require 'rails_helper'

RSpec.describe Comment, type: :model do
  it "should belong to an author" do
    author = Comment.reflect_on_association(:author)
    expect(author.macro).to eq(:belongs_to) 
  end

  it "should belong to a post" do
    post = Comment.reflect_on_association(:post)
    expect(post.macro).to eq(:belongs_to) 
  end

  pending "add some examples to (or delete) #{__FILE__}"
end
