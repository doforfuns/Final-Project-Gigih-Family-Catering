require 'rails_helper'

RSpec.describe ItemCategory, type: :model do
  it 'is invalid without belongs_to association to Item' do
    item_category = ItemCategory.reflect_on_association(:items).macro
    expect(item_category).to eq(:belongs_to)
  end

  it 'is invalid without belongs_to association to Category' do
    item_category = ItemCategory.reflect_on_association(:categories).macro
    expect(item_category).to eq(:belongs_to)
  end
end
