# This code was auto generated by AfterShip SDK Generator.
# Do not edit the class manually.
module AftershipAPI::Model
  class Checkpoint
    # The date and time of the checkpoint event was added to AfterShip. It uses the format `YYYY-MM-DDTHH:mm:ssZ` for the timezone GMT +0.
    # created_at?: String;
    attr_accessor :created_at

    # The unique code of courier for this checkpoint. Get courier slug 
    # slug?: String;
    attr_accessor :slug

    # The date and time of the checkpoint event, provided by the carrier. It uses the timezone of the checkpoint. The format may differ depending on how the carrier provides it:- YYYY-MM-DDTHH:mm:ss- YYYY-MM-DDTHH:mm:ssZ
    # checkpoint_time?: String;
    attr_accessor :checkpoint_time

    # Location info provided by carrier
    # location?: String;
    attr_accessor :location

    # City info provided by carrier
    # city?: String;
    attr_accessor :city

    # State info provided by carrier
    # state?: String;
    attr_accessor :state

    # Postal code info provided by carrier
    # zip?: String;
    attr_accessor :zip

    # The latitude and longitude coordinates indicate the precise location of the shipments that are currently in transit.
    # coordinate?: CoordinateCheckpoint;
    attr_accessor :coordinate

    # Country/Region ISO Alpha-3 (three letters) of the checkpoint
    # country_iso3?: String;
    attr_accessor :country_iso3

    # Country/Region name of the checkpoint, may also contain other location info.
    # country_name?: String;
    attr_accessor :country_name

    # Checkpoint message
    # message?: String;
    attr_accessor :message

    # Current status of tracking. (
    # tag?: TagV1;
    attr_accessor :tag

    # Current subtag of checkpoint. (
    # subtag?: String;
    attr_accessor :subtag

    # Normalized checkpoint message. (
    # subtag_message?: String;
    attr_accessor :subtag_message

    # Checkpoint raw status provided by courier
    # raw_tag?: String;
    attr_accessor :raw_tag

    # The array provides details about specific event(s) that occurred  to a shipment, such as "returned_to_sender". You can find the full list of events and reasons </span>- The events' value for the same checkpoint message is subject to change as we consistently strive to enhance the performance of this feature.
    # events?: EventsCheckpoint[];
    attr_accessor :events

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `AftershipAPI::Checkpoint` initialize method"
      end

      attributes = attributes.each_with_object({}) { |(k, v), h|
        h[k.to_sym] = v
      }

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end 

      if attributes.key?(:'slug')
        self.slug = attributes[:'slug']
      end 

      if attributes.key?(:'checkpoint_time')
        self.checkpoint_time = attributes[:'checkpoint_time']
      end 

      if attributes.key?(:'location')
        self.location = attributes[:'location']
      end 

      if attributes.key?(:'city')
        self.city = attributes[:'city']
      end 

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end 

      if attributes.key?(:'zip')
        self.zip = attributes[:'zip']
      end 

      if attributes.key?(:'coordinate')
        self.coordinate = attributes[:'coordinate']
      end 

      if attributes.key?(:'country_iso3')
        self.country_iso3 = attributes[:'country_iso3']
      end 

      if attributes.key?(:'country_name')
        self.country_name = attributes[:'country_name']
      end 

      if attributes.key?(:'message')
        self.message = attributes[:'message']
      end 

      if attributes.key?(:'tag')
        self.tag = attributes[:'tag']
      end 

      if attributes.key?(:'subtag')
        self.subtag = attributes[:'subtag']
      end 

      if attributes.key?(:'subtag_message')
        self.subtag_message = attributes[:'subtag_message']
      end 

      if attributes.key?(:'raw_tag')
        self.raw_tag = attributes[:'raw_tag']
      end 

      if attributes.key?(:'events')
        self.events = attributes[:'events']
      end 
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'created_at' => :'String',
        :'slug' => :'String',
        :'checkpoint_time' => :'String',
        :'location' => :'String',
        :'city' => :'String',
        :'state' => :'String',
        :'zip' => :'String',
        :'coordinate' => :'CoordinateCheckpoint',
        :'country_iso3' => :'String',
        :'country_name' => :'String',
        :'message' => :'String',
        :'tag' => :'TagV1',
        :'subtag' => :'String',
        :'subtag_message' => :'String',
        :'raw_tag' => :'String',
        :'events' => :'Array<EventsCheckpoint>',
      }
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'created_at' => :'created_at',
        :'slug' => :'slug',
        :'checkpoint_time' => :'checkpoint_time',
        :'location' => :'location',
        :'city' => :'city',
        :'state' => :'state',
        :'zip' => :'zip',
        :'coordinate' => :'coordinate',
        :'country_iso3' => :'country_iso3',
        :'country_name' => :'country_name',
        :'message' => :'message',
        :'tag' => :'tag',
        :'subtag' => :'subtag',
        :'subtag_message' => :'subtag_message',
        :'raw_tag' => :'raw_tag',
        :'events' => :'events',
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
