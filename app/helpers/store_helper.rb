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
  def to_time(datetime)
  	content_tag :p, class: "date" do 
  		content_tag(:span, datetime.strftime("%H:%M")+ " - " ) +
  		datetime.strftime("%d.%m.%y")
  	end
  	
  end
end
