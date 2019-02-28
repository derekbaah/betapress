require 'rails_helper'

RSpec.describe Post, type: :model do
 let(:category) { Category.create(name: "test category")}
 let(:user) { User.create(firstname:"John", lastname: "Doe", username: "johndoe", email: "johndoe@test.com", password: "password" )} 
  
  it "create a post" do
    post = Post.new(title:"testTitle", content: "anycontent", user: user )
    expect(post).to be_valid
  end
  
  it "is not valid with title blank" do
    post = Post.new(title:"", content: "anycontent", user: user )
    expect(post).to_not be_valid
  end
  
  it "is not valid with short title" do
    post = Post.new(title:"te", content: "anycontent", user: user )
    expect(post).to_not be_valid
  end
  
  it "is not valid with content empty" do
    post = Post.new(title:"Test Title", content: "", user: user )
    expect(post).to_not be_valid
  end
end


#associtions test


describe "Associations" do
  it "has one user" do
    assc = described_class.reflect_on_association(:user)
    expect(assc.macro).to eq :belongs_to
  end
end