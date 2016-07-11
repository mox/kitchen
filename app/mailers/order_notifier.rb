class OrderNotifier < ApplicationMailer
  add_template_helper(StoreHelper)

  default from: 'Экспресс Кухня <depot@ekspresskukhnya.kz>'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.received.subject
  #
  def received(order)
    @order = order

    mail to: "zakaz@ekspresskukhnya.kz", subject: "Новый заказ"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.shipped.subject
  #
  def shipped
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
