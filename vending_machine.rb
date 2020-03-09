class VendingMachine
  attr_reader :money_total

  AVAILABLE_MONEY = [10, 50, 100, 500, 1000].freeze

  def initialize
    @money_total = 0
  end

  def insert_money(money)
    if AVAILABLE_MONEY.include?(money)
      @money_total += money
    end
  end

  def refund
    @money_total.tap{ @money_total = 0 }
  end
end

vending_machine = VendingMachine.new
p vending_machine.insert_money(100)
p vending_machine.insert_money(100)
puts vending_machine.money_total
p vending_machine.refund
p vending_machine.money_total