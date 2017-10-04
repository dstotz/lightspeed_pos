require_relative 'resource'

require_relative 'customer'

module Lightspeed
  class CreditAccount < Lightspeed::Resource
    fields(
      creditAccountID: :id,
      name: :string,
      code: :string,
      description: :string,
      giftCard: :boolean,
      archived: :boolean,
      customerID: :id,
      Contact: :hash,
      WithdrawalPayments: :hash,
      timeStamp: :datetime,
      balance: :decimal
    )

    relationships :Customer
  end
end
