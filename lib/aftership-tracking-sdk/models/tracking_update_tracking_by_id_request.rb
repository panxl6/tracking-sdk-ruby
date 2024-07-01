# This code was auto generated by AfterShip SDK Generator.
# Do not edit the class manually.
module AftershipAPI::Model
  class TrackingUpdateTrackingByIdRequest
    # The phone number(s) to receive sms notifications.  Input `[]` to clear the value of this field. Supports up to 3 phone numbers.
    # smses?: String[];
    attr_accessor :smses

    # Email address(es) to receive email notifications. Input `[]` to clear the value of this field. Supports up to 3 email addresses.
    # emails?: String[];
    attr_accessor :emails

    # By default this field shows the `tracking_number`, but you can customize it as you wish with any info (e.g. the order number).
    # title?: String;
    attr_accessor :title

    # Customer name of the tracking.
    # customer_name?: String;
    attr_accessor :customer_name

    # A globally-unique identifier for the order.
    # order_id?: String;
    attr_accessor :order_id

    # The URL for the order in your system or store.
    # order_id_path?: String;
    attr_accessor :order_id_path

    # Custom fields that accept an object with string field. In order to protect the privacy of your customers, do not include any 
    # custom_fields?: Object;
    attr_accessor :custom_fields

    # Text field for the note.Input `""` to clear the value of this field.
    # note?: String;
    attr_accessor :note

    # The recipient’s language. If you set up AfterShip notifications in different languages, we use this to send the recipient tracking updates in their preferred language. Use an  to specify the language.
    # language?: String;
    attr_accessor :language

    # The promised delivery date of the order. It uses the format YYYY-MM-DD. This has no timezone and uses whatever date you provide. Since other EDDs use the shipment recipient’s timezone, we suggest following the same logic here.
    # order_promised_delivery_date?: String;
    attr_accessor :order_promised_delivery_date

    # Shipment delivery type- `pickup_at_store`- `pickup_at_courier`- `door_to_door`
    # delivery_type?: String;
    attr_accessor :delivery_type

    # Shipment pickup location for receiver
    # pickup_location?: String;
    attr_accessor :pickup_location

    # Shipment pickup note for receiver
    # pickup_note?: String;
    attr_accessor :pickup_note

    # Unique code of each courier. Provide a single courier.(https://admin.aftership.com/settings/couriers). Get a list of courier slug using 
    # slug?: String;
    attr_accessor :slug

    # Additional field required by some carriers to retrieve the tracking info. The shipper’s carrier account number. Refer to our article on  for more details.
    # tracking_account_number?: String;
    attr_accessor :tracking_account_number

    # Additional field required by some carriers to retrieve the tracking info. A type of tracking credential required by some carriers. Refer to our article on  for more details.
    # tracking_key?: String;
    attr_accessor :tracking_key

    # Additional field required by some carriers to retrieve the tracking info. The date the shipment was sent, using the format YYYYMMDD. Refer to our article on  for more details.
    # tracking_ship_date?: String;
    attr_accessor :tracking_ship_date

    # A unique, human-readable identifier for the order.
    # order_number?: String;
    attr_accessor :order_number

    # Order date in YYYY-MM-DDTHH:mm:ssZ format. e.g. 2021-07-26T11:23:51-05:00
    # order_date?: String;
    attr_accessor :order_date

    # The carrier service type for the shipment. If you provide info for this field, AfterShip will not update it with info from the carrier.
    # shipment_type?: String;
    attr_accessor :shipment_type

    # The  for more details.
    # origin_country_iso3?: String;
    attr_accessor :origin_country_iso3

    # The state of the sender’s address. This can help AfterShip with various functions like tracking, carrier auto-detection and auto-correction, calculating an EDD, etc.
    # origin_state?: String;
    attr_accessor :origin_state

    # The city of the sender’s address. This can help AfterShip with various functions like tracking, carrier auto-detection and auto-correction, calculating an EDD, etc.
    # origin_city?: String;
    attr_accessor :origin_city

    # The postal of the sender’s address. This can help AfterShip with various functions like tracking, carrier auto-detection and auto-correction, calculating an EDD, etc.
    # origin_postal_code?: String;
    attr_accessor :origin_postal_code

    # The sender address that the shipment is shipping from. This can help AfterShip with various functions like tracking, carrier auto-detection and auto-correction, calculating an EDD, etc.
    # origin_raw_location?: String;
    attr_accessor :origin_raw_location

    # The  for more details.
    # destination_country_iso3?: String;
    attr_accessor :destination_country_iso3

    # The state of the recipient’s address. This can help AfterShip with various functions like tracking, carrier auto-detection and auto-correction, calculating an EDD, etc. Also the additional field required by some carriers to retrieve the tracking info. The state/province of the recipient’s address. Refer to our article on  for more details.
    # destination_state?: String;
    attr_accessor :destination_state

    # The city of the recipient’s address. This can help AfterShip with various functions like tracking, carrier auto-detection and auto-correction, calculating an EDD, etc.
    # destination_city?: String;
    attr_accessor :destination_city

    # The postal of the recipient’s address. This can help AfterShip with various functions like tracking, carrier auto-detection and auto-correction, calculating an EDD, etc. Also the additional field required by some carriers to retrieve the tracking info. The postal code of the recipient’s address. Refer to our article on  for more details.
    # destination_postal_code?: String;
    attr_accessor :destination_postal_code

    # The shipping address that the shipment is shipping to. This can help AfterShip with various functions like tracking, carrier auto-detection and auto-correction, calculating an EDD, etc.
    # destination_raw_location?: String;
    attr_accessor :destination_raw_location

    # (Legacy) Replaced by `origin_country_iso3`. Additional field required by some carriers to retrieve the tracking info. The origin country/region of the shipment. Refer to our article on  for more details.
    # tracking_origin_country?: String;
    attr_accessor :tracking_origin_country

    # (Legacy) Replaced by `destination_country_iso3`. Additional field required by some carriers to retrieve the tracking info. The destination country/region of the shipment. Refer to our article on  for more details.
    # tracking_destination_country?: String;
    attr_accessor :tracking_destination_country

    # (Legacy) Replaced by `destination_postal_code`. Additional field required by some carriers to retrieve the tracking info. The postal code of the recipient’s address. Refer to our article on  for more details.
    # tracking_postal_code?: String;
    attr_accessor :tracking_postal_code

    # (Legacy) Replaced by `destination_state`. Additional field required by some carriers to retrieve the tracking info. The state/province of the recipient’s address. Refer to our article on  for more details.
    # tracking_state?: String;
    attr_accessor :tracking_state

    # The location_id refers to the place where you fulfilled the items.  - If you provide a location_id, the system will automatically use it as the tracking's origin address. However, passing both location_id and any origin address information simultaneously is not allowed.- Please make sure you add your locations .
    # location_id?: String;
    attr_accessor :location_id

    # The shipping_method string refers to the chosen method for delivering the package. Merchants typically offer various shipping methods to consumers during the checkout process, such as, Local Delivery, Free Express Worldwide Shipping, etc.
    # shipping_method?: String;
    attr_accessor :shipping_method

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `AftershipAPI::TrackingUpdateTrackingByIdRequest` initialize method"
      end

      attributes = attributes.each_with_object({}) { |(k, v), h|
        h[k.to_sym] = v
      }

      if attributes.key?(:'smses')
        self.smses = attributes[:'smses']
      end 

      if attributes.key?(:'emails')
        self.emails = attributes[:'emails']
      end 

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end 

      if attributes.key?(:'customer_name')
        self.customer_name = attributes[:'customer_name']
      end 

      if attributes.key?(:'order_id')
        self.order_id = attributes[:'order_id']
      end 

      if attributes.key?(:'order_id_path')
        self.order_id_path = attributes[:'order_id_path']
      end 

      if attributes.key?(:'custom_fields')
        self.custom_fields = attributes[:'custom_fields']
      end 

      if attributes.key?(:'note')
        self.note = attributes[:'note']
      end 

      if attributes.key?(:'language')
        self.language = attributes[:'language']
      end 

      if attributes.key?(:'order_promised_delivery_date')
        self.order_promised_delivery_date = attributes[:'order_promised_delivery_date']
      end 

      if attributes.key?(:'delivery_type')
        self.delivery_type = attributes[:'delivery_type']
      end 

      if attributes.key?(:'pickup_location')
        self.pickup_location = attributes[:'pickup_location']
      end 

      if attributes.key?(:'pickup_note')
        self.pickup_note = attributes[:'pickup_note']
      end 

      if attributes.key?(:'slug')
        self.slug = attributes[:'slug']
      end 

      if attributes.key?(:'tracking_account_number')
        self.tracking_account_number = attributes[:'tracking_account_number']
      end 

      if attributes.key?(:'tracking_key')
        self.tracking_key = attributes[:'tracking_key']
      end 

      if attributes.key?(:'tracking_ship_date')
        self.tracking_ship_date = attributes[:'tracking_ship_date']
      end 

      if attributes.key?(:'order_number')
        self.order_number = attributes[:'order_number']
      end 

      if attributes.key?(:'order_date')
        self.order_date = attributes[:'order_date']
      end 

      if attributes.key?(:'shipment_type')
        self.shipment_type = attributes[:'shipment_type']
      end 

      if attributes.key?(:'origin_country_iso3')
        self.origin_country_iso3 = attributes[:'origin_country_iso3']
      end 

      if attributes.key?(:'origin_state')
        self.origin_state = attributes[:'origin_state']
      end 

      if attributes.key?(:'origin_city')
        self.origin_city = attributes[:'origin_city']
      end 

      if attributes.key?(:'origin_postal_code')
        self.origin_postal_code = attributes[:'origin_postal_code']
      end 

      if attributes.key?(:'origin_raw_location')
        self.origin_raw_location = attributes[:'origin_raw_location']
      end 

      if attributes.key?(:'destination_country_iso3')
        self.destination_country_iso3 = attributes[:'destination_country_iso3']
      end 

      if attributes.key?(:'destination_state')
        self.destination_state = attributes[:'destination_state']
      end 

      if attributes.key?(:'destination_city')
        self.destination_city = attributes[:'destination_city']
      end 

      if attributes.key?(:'destination_postal_code')
        self.destination_postal_code = attributes[:'destination_postal_code']
      end 

      if attributes.key?(:'destination_raw_location')
        self.destination_raw_location = attributes[:'destination_raw_location']
      end 

      if attributes.key?(:'tracking_origin_country')
        self.tracking_origin_country = attributes[:'tracking_origin_country']
      end 

      if attributes.key?(:'tracking_destination_country')
        self.tracking_destination_country = attributes[:'tracking_destination_country']
      end 

      if attributes.key?(:'tracking_postal_code')
        self.tracking_postal_code = attributes[:'tracking_postal_code']
      end 

      if attributes.key?(:'tracking_state')
        self.tracking_state = attributes[:'tracking_state']
      end 

      if attributes.key?(:'location_id')
        self.location_id = attributes[:'location_id']
      end 

      if attributes.key?(:'shipping_method')
        self.shipping_method = attributes[:'shipping_method']
      end 
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'smses' => :'Array<String>',
        :'emails' => :'Array<String>',
        :'title' => :'String',
        :'customer_name' => :'String',
        :'order_id' => :'String',
        :'order_id_path' => :'String',
        :'custom_fields' => :'Object',
        :'note' => :'String',
        :'language' => :'String',
        :'order_promised_delivery_date' => :'String',
        :'delivery_type' => :'String',
        :'pickup_location' => :'String',
        :'pickup_note' => :'String',
        :'slug' => :'String',
        :'tracking_account_number' => :'String',
        :'tracking_key' => :'String',
        :'tracking_ship_date' => :'String',
        :'order_number' => :'String',
        :'order_date' => :'String',
        :'shipment_type' => :'String',
        :'origin_country_iso3' => :'String',
        :'origin_state' => :'String',
        :'origin_city' => :'String',
        :'origin_postal_code' => :'String',
        :'origin_raw_location' => :'String',
        :'destination_country_iso3' => :'String',
        :'destination_state' => :'String',
        :'destination_city' => :'String',
        :'destination_postal_code' => :'String',
        :'destination_raw_location' => :'String',
        :'tracking_origin_country' => :'String',
        :'tracking_destination_country' => :'String',
        :'tracking_postal_code' => :'String',
        :'tracking_state' => :'String',
        :'location_id' => :'String',
        :'shipping_method' => :'String',
      }
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'smses' => :'smses',
        :'emails' => :'emails',
        :'title' => :'title',
        :'customer_name' => :'customer_name',
        :'order_id' => :'order_id',
        :'order_id_path' => :'order_id_path',
        :'custom_fields' => :'custom_fields',
        :'note' => :'note',
        :'language' => :'language',
        :'order_promised_delivery_date' => :'order_promised_delivery_date',
        :'delivery_type' => :'delivery_type',
        :'pickup_location' => :'pickup_location',
        :'pickup_note' => :'pickup_note',
        :'slug' => :'slug',
        :'tracking_account_number' => :'tracking_account_number',
        :'tracking_key' => :'tracking_key',
        :'tracking_ship_date' => :'tracking_ship_date',
        :'order_number' => :'order_number',
        :'order_date' => :'order_date',
        :'shipment_type' => :'shipment_type',
        :'origin_country_iso3' => :'origin_country_iso3',
        :'origin_state' => :'origin_state',
        :'origin_city' => :'origin_city',
        :'origin_postal_code' => :'origin_postal_code',
        :'origin_raw_location' => :'origin_raw_location',
        :'destination_country_iso3' => :'destination_country_iso3',
        :'destination_state' => :'destination_state',
        :'destination_city' => :'destination_city',
        :'destination_postal_code' => :'destination_postal_code',
        :'destination_raw_location' => :'destination_raw_location',
        :'tracking_origin_country' => :'tracking_origin_country',
        :'tracking_destination_country' => :'tracking_destination_country',
        :'tracking_postal_code' => :'tracking_postal_code',
        :'tracking_state' => :'tracking_state',
        :'location_id' => :'location_id',
        :'shipping_method' => :'shipping_method',
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
