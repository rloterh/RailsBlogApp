require 'rails_helper'

RSpec.describe Post, type: :model do
  subject do
    Post.new(title: 'AI Generation', text: 'Lorem ipsum dolor sit amet', comments_counter: '5', likes_counter: -4)
  end

  before { subject.save }

  it 'title should be present' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'text should be present' do
    subject.text = nil
    expect(subject).to_not be_valid
  end

  it 'comments_counter to be present' do
    subject.comments_counter = '5'
    expect(subject).to_not be_valid
  end

  it 'likes_counter to be an integer' do
    subject.likes_counter = -4
    expect(subject).to_not be_valid
  end
end
