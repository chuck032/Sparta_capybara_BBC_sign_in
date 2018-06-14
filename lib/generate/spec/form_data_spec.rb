require 'spec_helper'

describe 'testing the generated data' do

  before(:all) do
    @data = GenerateData.new.generate_form_data

  end

  context 'generate the correct data' do

    it "Should return a first name string" do
      expect(@data.gen_first_name).to be_kind_of String
    end

    it "Should return a last name string" do
      expect(@data.gen_last_name).to be_kind_of String
    end















  end

end
