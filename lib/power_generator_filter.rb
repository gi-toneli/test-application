class PowerGeneratorFilter

  attr_accessor :filters

  def initialize(filters)
    self.filters = filters
  end

  def filter
    # power_generator = PowerGenerator

    # self.convert_filters.map do |filter|
      
    # end
  end

  def self.string_attributes
    [:name, :description, :image_url, :manufacturer]
  end

  def self.float_attributes
    [:width, :height, :lenght, :weight, :kwp, :price]
  end
  
  def self.hash_attributes
    PowerGenerator.structure_types.keys.map do |key|
      key.to_sym
    end
  end

  # protected
    def convert_filters
      converted_filters = []

      unless self.filters["str"].nil?
        PowerGeneratorFilter::string_attributes.each do |attribute|
          converted_filters << { attribute.to_sym => self.filters["str"].to_s }
        end
      end

      unless self.filters["flt"].nil?
        if PowerGeneratorFilter::float_attributes.include?(self.filters["flt"].to_sym)
          # converted_filters << {self.filters["flt"]
        end
      end

      unless self.filters["hsh"].nil?
        if PowerGeneratorFilter::hash_attributes.include?(self.filters["hsh"].to_sym)
          converted_filters << 
        end
      end
      converted_filters
    end
end
