require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    User.new(name: 'Onnee', photo: 'https://unsplash.com/photos/7YVZYbioZeITc8', bio: 'Lorem ipsum dolor', posts_counter: 3)
  end

  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'name to be too long' do
    subject.name = 'x' * 251
    expect(subject).to_not be_valid
  end

  it 'photo is present' do
    subject.photo = nil
    expect(subject).to_not be_valid
  end

  it 'bio to be present' do
    subject.bio = nil
    expect(subject).to_not be_valid
  end

  it 'posts_counter to be an integer' do
    subject.posts_counter = 3.4
    expect(subject).to_not be_valid
  end
end
