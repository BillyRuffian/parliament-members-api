=begin
#Members API

#An API which retrieves Members data.

The version of the OpenAPI document: v1
Contact: softwareengineering@parliament.uk
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'date'
require 'time'

module ParliamentMembers
  class House
    N1 = 1.freeze
    N2 = 2.freeze

    def self.all_vars
      @all_vars ||= [N1, N2].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if House.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #House"
    end
  end
end
