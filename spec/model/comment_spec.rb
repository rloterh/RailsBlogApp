require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'Comment Model' do
    before do
      @user = User.new(name: 'Onnee', photo: nil, bio: 'Lorem ipsum dolor', posts_counter: 3)
      @post = Post.new(author: @user, title: 'AI Generation', text: 'Lorem ipsum dolor sit amet', comments_counter: '5',
                       likes_counter: -4)
      @comment = Comment.new(post_id: @post.id, author_id: @user.id, text: 'Lorem dolor ipsum')
    end

    it 'text should be present' do
      @comment.text = nil
      expect(@comment).to_not be_valid
    end

    it 'checks if attributes are valid' do
      expect(@user).to be_valid
    end
  end
end



# require 'rails_helper'

# RSpec.describe Comment, type: :model do
#   let(:user) { User.create(name: 'John Doe', posts_counter: 0) }

#   let(:post) { Post.create(title: 'Title', content: 'Content', comments_counter: 0, likes_counter: 0, author: user) }

#   describe '#increment_comments_counter' do
#     it 'increments the comments_counter of the post' do
#       Comment.create(content: 'Content', post:, user:)
#       expect(post.comments_counter).to eq(1)
#     end
#   end

#   describe '#decrement_comments_counter' do
#     it 'decrements the comments_counter of the post' do
#       comment = Comment.create(content: 'Content', post:, user:)
#       comment.destroy
#       expect(post.comments_counter).to eq(0)
#     end
#   end
# end


# RSpec.describe User, type: :model do
#   before :each do
#     @user = User.new(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher', post_counter: 0)
#     @post = Post.new(title: 'Hi', text: 'My world', comment_counter: 0, like_counter: 0, author_id: 1)
#     @comment = Comment.new(post: @post, text: 'hello yimi', author_id: @user)
#   end

#   it 'checks if attributes are valid' do
#     expect(@user).to be_valid
#   end

#   it 'checks if attributes are valid' do
#     expect(@post).to_not be_valid
#   end
# end


# RSpec.describe Comment, type: :model do
#   describe 'Comment Model' do
#     before do
#       @user = User.new(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher')
#       @post = Post.new(author: @user, title: 'Hello', text: 'This is my first post')
#       @comment = Comment.new(post_id: @post.id, author_id: @user.id, text: 'This is my first comment')
#     end

#     it 'text should not be blank' do
#       @comment.text = nil
#       expect(@comment).to_not be_valid
#     end

#     it 'post id must be integer' do
#       @comment.post_id = 1.5
#       expect(@comment).to_not be_valid
#     end

#     it 'author id must be integer' do
#       @comment.author_id = 1.5
#       expect(@comment).to_not be_valid
#     end
#   end
# end

