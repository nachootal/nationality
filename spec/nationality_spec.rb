require "spec_helper"

describe Nationality do

  context "constants" do
    it { should have_constant(:NATIONALITIES) }
  end

  context "::NATIONALITY" do
    it "should have two locales" do
      Nationality::NATIONALITIES.keys == 2
    end
=begin
    it "should have an :en locale" do
      I18n.locale = :en
      Nationality::Nationality.count.should == 196
    end
    it "should be 196" do
      Nationality::NATIONALITIES[:es].length.should == 196
    end
    it "should be 169" do
      Nationality::NATIONALITIES[:en].length.should == 169
    end
=end
  end
end
