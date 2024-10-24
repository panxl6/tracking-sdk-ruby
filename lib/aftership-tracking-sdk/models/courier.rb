# This code was auto generated by AfterShip SDK Generator.
# Do not edit the class manually.
module AftershipAPI::Model
  class Courier

    # Unique code of courier. Get the slugs from .
    # slug?: String;
    attr_accessor :slug

    # Name of courier
    # name?: String;
    attr_accessor :name

    # Contact phone number of courier
    # phone?: String;
    attr_accessor :phone

    # Other name of courier
    # other_name?: String;
    attr_accessor :other_name

    # Website link of courier
    # web_url?: String;
    attr_accessor :web_url

    # The extra fields need for tracking, such as `tracking_account_number`, `tracking_postal_code`, `tracking_ship_date`, `tracking_key`, `tracking_destination_country`
    # required_fields?: String[];
    attr_accessor :required_fields

    # The extra fields which are optional for tracking. Basically it's the same as required_fields, but the difference is that only some of the tracking numbers require these fields.
    # optional_fields?: String[];
    attr_accessor :optional_fields

    # Default language of tracking results
    # default_language?: String;
    attr_accessor :default_language

    # Other supported languages
    # support_languages?: String[];
    attr_accessor :support_languages

    # Country/Region code (ISO Alpha-3) where the courier provides service
    # service_from_country_iso3?: String[];
    attr_accessor :service_from_country_iso3

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `AftershipAPI::Courier` initialize method"
      end

      attributes = attributes.each_with_object({}) { |(k, v), h|
        h[k.to_sym] = v
      }

      if attributes.key?(:'slug')
        self.slug = attributes[:'slug']
      end 

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end 

      if attributes.key?(:'phone')
        self.phone = attributes[:'phone']
      end 

      if attributes.key?(:'other_name')
        self.other_name = attributes[:'other_name']
      end 

      if attributes.key?(:'web_url')
        self.web_url = attributes[:'web_url']
      end 

      if attributes.key?(:'required_fields')
        self.required_fields = attributes[:'required_fields']
      end 

      if attributes.key?(:'optional_fields')
        self.optional_fields = attributes[:'optional_fields']
      end 

      if attributes.key?(:'default_language')
        self.default_language = attributes[:'default_language']
      end 

      if attributes.key?(:'support_languages')
        self.support_languages = attributes[:'support_languages']
      end 

      if attributes.key?(:'service_from_country_iso3')
        self.service_from_country_iso3 = attributes[:'service_from_country_iso3']
      end 
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'slug' => :'String',
        :'name' => :'String',
        :'phone' => :'String',
        :'other_name' => :'String',
        :'web_url' => :'String',
        :'required_fields' => :'Array<String>',
        :'optional_fields' => :'Array<String>',
        :'default_language' => :'String',
        :'support_languages' => :'Array<String>',
        :'service_from_country_iso3' => :'Array<String>',
      }
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'slug' => :'slug',
        :'name' => :'name',
        :'phone' => :'phone',
        :'other_name' => :'other_name',
        :'web_url' => :'web_url',
        :'required_fields' => :'required_fields',
        :'optional_fields' => :'optional_fields',
        :'default_language' => :'default_language',
        :'support_languages' => :'support_languages',
        :'service_from_country_iso3' => :'service_from_country_iso3',
      }
    end

    # Builds the object from hash
    # @param attributes [Hash] Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(key) && attributes[key].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[key].is_a?(Array)
            transformed_hash["#{key}"] = attributes[key].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[key].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[key])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param type [String] Data type
    # @param value [String] Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
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
        klass = AftershipAPI::Model.const_get(type)
        klass.build_from_hash(value)
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
        next if value.nil?

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param value [Object] Any valid value
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

    def to_json(*a)
      to_hash.to_json(*a)
    end
  end
end

