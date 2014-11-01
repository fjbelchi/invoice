require 'spec_helper'

describe Company do
  describe '#new' do
    it 'takes name, email, taxId and return a company' do
      company = Company.new
      expect(company).to be_a Company
    end
  end
end
