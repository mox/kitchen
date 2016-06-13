module StoreHelper
	def to_tenge(amount)
    number_to_currency(
      amount, 
      unit: "тг.", 
      precision: 0, 
      separator: " ", 
      delimiter: " ",
      format: "%n %u")
  end 
end
