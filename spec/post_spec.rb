require 'rails_helper'

RSpec.describe Post, type: :model do
  it "it can create a post" do
	let(:category) { Category.create(name: "testcategory") }
    Post = Post.new(title: "ello wold", content: "random stuff")
    expect(post).to be_valid
  end
end
