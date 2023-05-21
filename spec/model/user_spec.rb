require 'rails_helper'

RSpec.describe User, type: :model do
  subject { 
    User.new(name: 'Onnee', photo:nil, bio:'Lorem ipsum dolor', posts_counter: 3)
    }

  before { subject.save }
  
  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  
  it 'photo is not present' do
    subject.photo = 'www.onne.jpg'
    expect(subject).to_not be_valid
  end
  
  it 'bio to be present' do
    subject.bio = nil
    expect(subject).to_not be_valid
  end
  
  it 'posts_counter to be an integer' do
    subject.bio = '4'
    expect(subject).to_not be_valid
  end

end
