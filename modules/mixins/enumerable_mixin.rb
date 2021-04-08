# frozen_string_literal: true

class ConvenienceStore
  include Enumerable
  attr_reader :snacks

  def initialize
    @snacks = []
  end

  def add_snack(snack)
    snacks << snack
  end

  # this is where the magic happens
  # once you define an each, ruby will
  # know how to do all enumerable methods
  def each(&block)
    snacks.each(&block)
  end
end

bodega = ConvenienceStore.new
bodega.add_snack('Doritos')
bodega.add_snack('Jolly Ranchers')
bodega.add_snack('Slim Jims')
p bodega.snacks
bodega.each { |snack| puts "#{snack} are delicious" }
p bodega.map(&:upcase)
p bodega.select { |snack| snack.downcase.include?('j') }
p bodega.reject { |snack| snack.downcase.include?('j') }
