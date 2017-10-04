require_relative 'resource'

module Lightspeed
  class Customer < Lightspeed::Resource
    alias_method :archive, :destroy

    fields(
      customerID: :id,
      firstName: :string,
      lastName: :string,
      dob: :datetime,
      archived: :boolean,
      title: :string,
      company: :string,
      companyRegistrationNumber: :string,
      vatNumber: :string,
      createTime: :datetime,
      timeStamp: :datetime,
      creditAccountID: :id,
      customerTypeID: :id,
      discountID: :id,
      taxCategoryID: :id,
      Contact: :hash,
      CreditAccount: :hash,
      CustomerType: :hash,
      Discount: :hash,
      Note: :hash,
      TaxCategory: :hash,
      CustomFieldValues: :hash,
    )

    relationships :CreditAccounts
  end
end
