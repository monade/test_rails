require 'rails_helper'

RSpec.describe Tag, type: :model do
  it 'requires a name' do
    subject.validate
    expect(subject.errors.details[:name]).to eq([error: :blank])
    subject.name = 'hello'
    subject.validate
    expect(subject.errors.details[:name]).to be_empty
  end
end
