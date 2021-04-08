# frozen_string_literal: true

module Purchaseable
  # notice no self. Because we don't want to reference this
  # function as Purchaseable.purchase. Instead, we want it
  # to live as a method on the class we mixed it into
  def purchase(item)
    "#{item} has been purchased!"
  end
end

class Bookstore
  include Purchaseable
end

class Supermarket
  include Purchaseable
end

class CornerMart < Supermarket
end

barnes_and_noble = Bookstore.new
puts barnes_and_noble.purchase('Atlas Shrugged')

RSpec.describe Bookstore do
  it { is_expected.to respond_to(:purchase) }
end

RSpec.describe Supermarket do
  it { is_expected.to respond_to(:purchase) }
end

RSpec.describe CornerMart do
  it { is_expected.to respond_to(:purchase) }
end
