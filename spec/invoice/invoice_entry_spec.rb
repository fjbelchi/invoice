require 'spec_helper'

describe Invoice::InvoiceEntry do
  describe '#new' do
    it 'takes date, description and amount to return a Invoice Entry' do
      date = Date.parse('3-11-2014')
      description = 'Feature X done'
      amount = '1000'

      invoice_entry = described_class.new(date, description, amount)

      expect(invoice_entry).to be_a described_class
      expect(invoice_entry.date).to eq(date)
      expect(invoice_entry.description).to eq(description)
      expect(invoice_entry.amount).to eq(amount)

    end
  end
end
