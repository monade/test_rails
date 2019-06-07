require 'rails_helper'

RSpec.describe Post, type: :model do
  it 'requires a title' do
    subject.validate
    expect(subject.errors.details[:title]).to eq([error: :blank])
    subject.title = 'hello'
    subject.validate
    expect(subject.errors.details[:title]).to be_empty
  end
end
