require 'scanner'

describe Scanner do
  it 'scans one item and displays its total' do
    item = double("Item", :price => 0.5)
    subject.scan(item)
    expect(subject.total).to eq 0.5
  end
  it 'formats the total correctly' do
    item = double("Item", :price => 0.5)
    subject.scan(item)
    expect(subject.formatted_total).to eq "£00.50"
  end
end