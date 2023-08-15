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
  class HouseMembership
    attr_accessor :membership_from

    attr_accessor :membership_from_id

    attr_accessor :house

    attr_accessor :membership_start_date

    attr_accessor :membership_end_date

    attr_accessor :membership_end_reason

    attr_accessor :membership_end_reason_notes

    attr_accessor :membership_end_reason_id

    attr_accessor :membership_status

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'membership_from' => :'membershipFrom',
        :'membership_from_id' => :'membershipFromId',
        :'house' => :'house',
        :'membership_start_date' => :'membershipStartDate',
        :'membership_end_date' => :'membershipEndDate',
        :'membership_end_reason' => :'membershipEndReason',
        :'membership_end_reason_notes' => :'membershipEndReasonNotes',
        :'membership_end_reason_id' => :'membershipEndReasonId',
        :'membership_status' => :'membershipStatus'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'membership_from' => :'String',
        :'membership_from_id' => :'Integer',
        :'house' => :'House',
        :'membership_start_date' => :'Time',
        :'membership_end_date' => :'Time',
        :'membership_end_reason' => :'String',
        :'membership_end_reason_notes' => :'String',
        :'membership_end_reason_id' => :'Integer',
        :'membership_status' => :'HouseMembershipStatus'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'membership_from',
        :'membership_from_id',
        :'membership_start_date',
        :'membership_end_date',
        :'membership_end_reason',
        :'membership_end_reason_notes',
        :'membership_end_reason_id',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `ParliamentMembers::HouseMembership` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ParliamentMembers::HouseMembership`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'membership_from')
        self.membership_from = attributes[:'membership_from']
      end

      if attributes.key?(:'membership_from_id')
        self.membership_from_id = attributes[:'membership_from_id']
      end

      if attributes.key?(:'house')
        self.house = attributes[:'house']
      end

      if attributes.key?(:'membership_start_date')
        self.membership_start_date = attributes[:'membership_start_date']
      end

      if attributes.key?(:'membership_end_date')
        self.membership_end_date = attributes[:'membership_end_date']
      end

      if attributes.key?(:'membership_end_reason')
        self.membership_end_reason = attributes[:'membership_end_reason']
      end

      if attributes.key?(:'membership_end_reason_notes')
        self.membership_end_reason_notes = attributes[:'membership_end_reason_notes']
      end

      if attributes.key?(:'membership_end_reason_id')
        self.membership_end_reason_id = attributes[:'membership_end_reason_id']
      end

      if attributes.key?(:'membership_status')
        self.membership_status = attributes[:'membership_status']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          membership_from == o.membership_from &&
          membership_from_id == o.membership_from_id &&
          house == o.house &&
          membership_start_date == o.membership_start_date &&
          membership_end_date == o.membership_end_date &&
          membership_end_reason == o.membership_end_reason &&
          membership_end_reason_notes == o.membership_end_reason_notes &&
          membership_end_reason_id == o.membership_end_reason_id &&
          membership_status == o.membership_status
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [membership_from, membership_from_id, house, membership_start_date, membership_end_date, membership_end_reason, membership_end_reason_notes, membership_end_reason_id, membership_status].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = ParliamentMembers.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
