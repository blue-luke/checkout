require 'scanner'

describe Scanner do
  it 'scans one item and displays its total' do
    item = double("Item", :name => "Banana", :price => 0.5)
    subject.scan(item)
    expect(subject.total).to eq 0.5
  end
end