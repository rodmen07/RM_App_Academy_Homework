require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  subject { Dessert.new("cake", 1, :chef) }

  describe "#initialize" do
    it "sets a type" do
      expect !subject.type.nil?
    end
    it "sets a quantity" do
      expect !subject.quantity.nil?
    end

    it "starts ingredients as an empty array" do
      expect subject.ingredients.is_a?(Array)
      expect subject.ingredients.empty?
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("cake", 'a', :chef) }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      subject.add_ingredient('flour')
      expect subject.ingredients.include?('flour')
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      subject.mix!
      expect subject.ingredients
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
    end

    it "raises an error if the amount is greater than the quantity" do
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
    end
  end
end
