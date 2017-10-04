require_relative 'resource'

require_relative 'item'
require_relative 'order'

module Lightspeed
  class OrderLine < Lightspeed::Resource
    alias_method :archive, :destroy

    fields(
      orderLineID: :id,
      quantity: :integer,
      price: :decimal,
      originalPrice: :decimal,
      checkedIn: :integer,
      numReceived: :integer,
      orderID: :id,
      itemID: :id,
      timeStamp: :datetime,
      total: :decimal
    )

    relationships :Order, :Item
  end
end

