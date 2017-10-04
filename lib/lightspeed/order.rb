require_relative 'resource'

require_relative 'order_lines'

module Lightspeed
  class Order < Lightspeed::Resource
    alias_method :archive, :destroy

    fields(
      orderID: :id,
      orderedDate: :datetime,
      receivedDate: :datetime,
      arrivalDate: :datetime,
      shipInstructions: :integer,
      stockInstructions: :integer,
      shipCost: :decimal,
      otherCost: :decimal,
      complete: :boolean,
      archived: :boolean,
      discount: :boolean,
      totalDiscount: :decimal,
      totalQuantity: :decimal,
      vendorID: :id,
      noteID: :id,
      shopID: :id,
      Vendor: :hash,
      Note: :hash,
      Shop: :hash,
      OrderLines: :hash,
      CustomFieldValues: :hash,
      timeStamp: :datetime
    )

    relationships :OrderLines
  end
end

