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
  
  def formatted_total
    item_total = @scanned_items.map { |item| item.price }.sum.to_s
    pounds, pence = item_total.split('.')[0], item_total.split('.')[1]
    if pence.length == 1
      pence.concat("0")
    end
    if pounds.length == 1
      pounds.prepend("0")
    end
    "£#{pounds}.#{pence}"
  end

end