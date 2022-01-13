class Scanner
  def initialize
    @scanned_items = []
  end

  def scan(item)
    @scanned_items.append(item)
  end

  def total
    @scanned_items.map { |item| item.price }.sum
  end
end