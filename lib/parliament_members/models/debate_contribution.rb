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
  class DebateContribution
    attr_accessor :total_contributions

    attr_accessor :debate_title

    attr_accessor :debate_id

    attr_accessor :debate_website_id

    attr_accessor :sitting_date

    attr_accessor :section

    attr_accessor :house

    attr_accessor :first_timecode

    attr_accessor :speech_count

    attr_accessor :question_count

    attr_accessor :supplementary_question_count

    attr_accessor :intervention_count

    attr_accessor :answer_count

    attr_accessor :points_of_order_count

    attr_accessor :statements_count

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'total_contributions' => :'totalContributions',
        :'debate_title' => :'debateTitle',
        :'debate_id' => :'debateId',
        :'debate_website_id' => :'debateWebsiteId',
        :'sitting_date' => :'sittingDate',
        :'section' => :'section',
        :'house' => :'house',
        :'first_timecode' => :'firstTimecode',
        :'speech_count' => :'speechCount',
        :'question_count' => :'questionCount',
        :'supplementary_question_count' => :'supplementaryQuestionCount',
        :'intervention_count' => :'interventionCount',
        :'answer_count' => :'answerCount',
        :'points_of_order_count' => :'pointsOfOrderCount',
        :'statements_count' => :'statementsCount'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'total_contributions' => :'Integer',
        :'debate_title' => :'String',
        :'debate_id' => :'Integer',
        :'debate_website_id' => :'String',
        :'sitting_date' => :'Time',
        :'section' => :'String',
        :'house' => :'String',
        :'first_timecode' => :'Time',
        :'speech_count' => :'Integer',
        :'question_count' => :'Integer',
        :'supplementary_question_count' => :'Integer',
        :'intervention_count' => :'Integer',
        :'answer_count' => :'Integer',
        :'points_of_order_count' => :'Integer',
        :'statements_count' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'debate_title',
        :'debate_website_id',
        :'section',
        :'house',
        :'first_timecode',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `ParliamentMembers::DebateContribution` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ParliamentMembers::DebateContribution`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'total_contributions')
        self.total_contributions = attributes[:'total_contributions']
      end

      if attributes.key?(:'debate_title')
        self.debate_title = attributes[:'debate_title']
      end

      if attributes.key?(:'debate_id')
        self.debate_id = attributes[:'debate_id']
      end

      if attributes.key?(:'debate_website_id')
        self.debate_website_id = attributes[:'debate_website_id']
      end

      if attributes.key?(:'sitting_date')
        self.sitting_date = attributes[:'sitting_date']
      end

      if attributes.key?(:'section')
        self.section = attributes[:'section']
      end

      if attributes.key?(:'house')
        self.house = attributes[:'house']
      end

      if attributes.key?(:'first_timecode')
        self.first_timecode = attributes[:'first_timecode']
      end

      if attributes.key?(:'speech_count')
        self.speech_count = attributes[:'speech_count']
      end

      if attributes.key?(:'question_count')
        self.question_count = attributes[:'question_count']
      end

      if attributes.key?(:'supplementary_question_count')
        self.supplementary_question_count = attributes[:'supplementary_question_count']
      end

      if attributes.key?(:'intervention_count')
        self.intervention_count = attributes[:'intervention_count']
      end

      if attributes.key?(:'answer_count')
        self.answer_count = attributes[:'answer_count']
      end

      if attributes.key?(:'points_of_order_count')
        self.points_of_order_count = attributes[:'points_of_order_count']
      end

      if attributes.key?(:'statements_count')
        self.statements_count = attributes[:'statements_count']
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
          total_contributions == o.total_contributions &&
          debate_title == o.debate_title &&
          debate_id == o.debate_id &&
          debate_website_id == o.debate_website_id &&
          sitting_date == o.sitting_date &&
          section == o.section &&
          house == o.house &&
          first_timecode == o.first_timecode &&
          speech_count == o.speech_count &&
          question_count == o.question_count &&
          supplementary_question_count == o.supplementary_question_count &&
          intervention_count == o.intervention_count &&
          answer_count == o.answer_count &&
          points_of_order_count == o.points_of_order_count &&
          statements_count == o.statements_count
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [total_contributions, debate_title, debate_id, debate_website_id, sitting_date, section, house, first_timecode, speech_count, question_count, supplementary_question_count, intervention_count, answer_count, points_of_order_count, statements_count].hash
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