RSpec.describe Like, type: :model do
  let(:user) { User.create(name: 'John Doe', posts_counter: 0) }

  let(:post) { Post.create(title: 'Title', content: 'Content', comments_counter: 0, likes_counter: 0, author: user) }

  it 'increments the likes_counter of the post' do
    Like.create(user:, post:)
    expect(post.likes_counter).to eq(1)
  end

  it 'decrements the likes_counter of the post' do
    like = Like.create(user:, post:)
    like.destroy
    expect(post.likes_counter).to eq(0)
  end

end

#require 'rails_helper'

# RSpec.describe Like, type: :model do
#   before :each do
#     @user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher', post_counter: 1)
#     @post = Post.create(title: 'Hi', text: 'My world', comment_counter: 0, like_counter: 1, author_id: @user)
#   end

#   it 'checks validity of like present' do
#     @like = Like.new(author_id: @user, posts_id: @post)
#     expect(@like).to_not be_valid
#   end

#   it 'checks likes counter' do
#     Like.create(author_id: @user, posts_id: @post)
#     expect(@post.like_counter).to eq 1
#   end
# end


# require 'rails_helper'

# RSpec.describe Comment, type: :model do
#   describe 'Comment Model' do
#     before do
#       @user = User.new(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher')
#       @post = Post.new(author: @user, title: 'Hello', text: 'This is my first post')
#       @like = Like.new(post_id: @post.id, author_id: @user.id)
#     end

#     it 'post id must be integer' do
#       @like.post_id = 1.5
#       expect(@like).to_not be_valid
#     end

#     it 'author id must be integer' do
#       @like.author_id = 1.5require 'rails_helper'

# RSpec.describe Like, type: :model do
#   before :each do
#     @user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher', post_counter: 1)
#     @post = Post.create(title: 'Hi', text: 'My world', comment_counter: 0, like_counter: 1, author_id: @user)
#   end

#   it 'checks validity of like present' do
#     @like = Like.new(author_id: @user, posts_id: @post)
#     expect(@like).to_not be_valid
#   end

#   it 'checks likes counter' do
#     Like.create(author_id: @user, posts_id: @post)
#     expect(@post.like_counter).to eq 1
#   end
# end


# require 'rails_helper'

# RSpec.describe Comment, type: :model do
#   describe 'Comment Model' do
#     before do
#       @user = User.new(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher')
#       @post = Post.new(author: @user, title: 'Hello', text: 'This is my first post')
#       @like = Like.new(post_id: @post.id, author_id: @user.id)
#     end

#     it 'post id must be integer' do
#       @like.post_id = 1.5
#       expect(@like).to_not be_validrequire 'rails_helper'

# RSpec.describe Like, type: :model do
#   before :each do
#     @user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher', post_counter: 1)
#     @post = Post.create(title: 'Hi', text: 'My world', comment_counter: 0, like_counter: 1, author_id: @user)
#   end

#   it 'checks validity of like present' do
#     @like = Like.new(author_id: @user, posts_id: @post)
#     expect(@like).to_not be_valid
#   end

#   it 'checks likes counter' do
#     Like.create(author_id: @user, posts_id: @post)
#     expect(@post.like_counter).to eq 1
#   end
# end


# require 'rails_helper'

# RSpec.describe Comment, type: :model do
#   describe 'Comment Model' do
#     before do
#       @user = User.new(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher')
#       @post = Post.new(author: @user, title: 'Hello', text: 'This is my first post')
#       @like = Like.new(post_id: @post.id, author_id: @user.id)
#     end

#     it 'post id must be integer' do
#       @like.post_id = 1.5
#       expect(@like).to_not be_validrequire 'rails_helper'

# RSpec.describe Like, type: :model do
#   before :each do
#     @user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher', post_counter: 1)
#     @post = Post.create(title: 'Hi', text: 'My world', comment_counter: 0, like_counter: 1, author_id: @user)
#   end

#   it 'checks validity of like present' do
#     @like = Like.new(author_id: @user, posts_id: @post)
#     expect(@like).to_not be_valid
#   end

#   it 'checks likes counter' do
#     Like.create(author_id: @user, posts_id: @post)
#     expect(@post.like_counter).to eq 1
#   end
# end


# require 'rails_helper'

# RSpec.describe Comment, type: :model do
#   describe 'Comment Model' do
#     before do
#       @user = User.new(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher')
#       @post = Post.new(author: @user, title: 'Hello', text: 'This is my first post')
#       @like = Like.new(post_id: @post.id, author_id: @user.id)
#     end

#     it 'post id must be integer' do
#       @like.post_id = 1.5
#       expect(@like).to_not be_validrequire 'rails_helper'

# RSpec.describe Like, type: :model do
#   before :each do
#     @user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher', post_counter: 1)
#     @post = Post.create(title: 'Hi', text: 'My world', comment_counter: 0, like_counter: 1, author_id: @user)
#   end

#   it 'checks validity of like present' do
#     @like = Like.new(author_id: @user, posts_id: @post)
#     expect(@like).to_not be_valid
#   end

#   it 'checks likes counter' do
#     Like.create(author_id: @user, posts_id: @post)
#     expect(@post.like_counter).to eq 1
#   end
# end


# require 'rails_helper'

# RSpec.describe Comment, type: :model do
#   describe 'Comment Model' do
#     before do
#       @user = User.new(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher')
#       @post = Post.new(author: @user, title: 'Hello', text: 'This is my first post')
#       @like = Like.new(post_id: @post.id, author_id: @user.id)
#     end

#     it 'post id must be integer' do
#       @like.post_id = 1.5
#       expect(@like).to_not be_valid
#     end

#     it 'author id must be integer' do
#       @like.author_id = 1.5
#       expect(@like).to_not be_valid
#     end
#   end
# end


#     end

#     it 'author id must be integer' do
#       @like.author_id = 1.5
#       expect(@like).to_not be_valid
#     end
#   end
# end


#     end

#     it 'author id must be integer' do
#       @like.author_id = 1.5
#       expect(@like).to_not be_valid
#     end
#   end
# end


#     end

#     it 'author id must be integer' do
#       @like.author_id = 1.5
#       expect(@like).to_not be_valid
#     end
#   end
# end


#       expect(@like).to_not be_valid
#     end
#   end
# end

