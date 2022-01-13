require 'item'

describe 'Item' do
  it 'displays a price' do 
    item1 = Item.new(0.5)
    expect(item1.price).to eq 0.5
  end
end