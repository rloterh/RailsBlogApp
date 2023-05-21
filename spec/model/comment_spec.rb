require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'Comment Model' do
    before do
      @user = User.new(name: 'Onnee', photo:nil, bio:'Lorem ipsum dolor', posts_counter: 3)
      @post = Post.new(title: 'AI Generation', text: 'Lorem ipsum dolor sit amet', comments_counter:'5', likes_counter: -4)
      @comment = Comment.new(post_id: @post.id, author_id: @user.id, text: 'Lorem dolor ipsum')
    end
  end

  it 'text should be present' do
    @comment.text = nil
    expect(@comment).to_not be_valid
  end

end
