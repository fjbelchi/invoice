module Invoice
  # Class client contains the properties required to generate an invoice
  class Client
    attr_accessor :name, :email, :address, :zip_code, :city, :country
    attr_accessor :contact_name, :phone_number
    attr_accessor :tax_id, :invoice_prefix

    def initialize(name, email, tax_id)
      @name = name
      @email = email
      @tax_id = tax_id
    end
  end
end
