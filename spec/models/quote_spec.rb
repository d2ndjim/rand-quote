require 'rails_helper'

RSpec.describe Quote, type: :model do
  subject do
    Quote.new(text: 'There are no failures just experiences and your reactions to them.', author: 'Tom Krause')
  end
  before { subject.save }

  it 'text should not be nil' do
    subject.text = nil
    expect(subject).to_not be_valid
  end

  it 'should valid the author' do
    subject.author = 'Tom Krause'
    expect(subject).to be_valid
  end
end
