module Invoice
  # Class InvoiceEntry which contains the properties required to generate
  # the content of an invoice.
  class InvoiceEntry
    attr_accessor :date, :description, :amount
    def initialize(date, description, amount)
      @date = date
      @description = description
      @amount = amount
    end
  end
end
