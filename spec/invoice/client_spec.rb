require 'spec_helper'

describe Invoice::Client do

  describe '#new' do
    it 'takes min requirements: name, email, taxId and return a client' do
      name = 'CompanyName'
      email = 'email@email.com'
      tax_id = '1234ABC'

      client = described_class.new(name, email, tax_id)

      expect(client).to be_a described_class
      expect(client.name).to eq(name)
      expect(client.email).to eq(email)
      expect(client.tax_id).to eq(tax_id)
    end
  end

  describe 'Properties' do
    name = 'Fran'
    email = 'fran@fjbelchi.com'
    tax_id = '1234'

    client = described_class.new(name, email, tax_id)

    it 'has a name' do
      expect(client.name).to eq(name)
    end

    it 'has a email' do
      expect(client.email).to eq(email)
    end

    it 'has a address' do
      address = 'C/Atardecer'
      client.address = address
      expect(client.address).to eq(address)
    end

    it 'has a city' do
      city = 'Cartagena'
      client.city = city
      expect(client.city).to eq(city)
    end

    it 'has a country' do
      country = 'Spain'
      client.country = country
      expect(client.country).to eq(country)
    end

    it 'has a contact_name' do
      contact_name = 'Fran'
      client.contact_name = contact_name
      expect(client.contact_name).to eq(contact_name)
    end

    it 'has a phone_number' do
      phone_number = '+34600120202'
      client.phone_number = phone_number
      expect(client.phone_number).to eq(phone_number)
    end

    it 'has a tax_id' do
      expect(client.tax_id).to eq(tax_id)
      tax_id = '1203ASD12'
      client.tax_id = tax_id
      expect(client.tax_id).to eq(tax_id)
    end

  end

end
