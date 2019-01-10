require 'rails_helper'

RSpec.describe Post, type: :model do
  it "should have one author" do
    post = Post.reflect_on_association(:author)
    expect(post.macro).to eq(:has_one) 
  end
  
  it "should have many comments" do
    comment = Post.reflect_on_association(:comments)
    expect(comment.macro).to eq(:has_many) 
  end

end
