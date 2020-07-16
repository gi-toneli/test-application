class PowerGeneratorFilter
  def self.string_attributes
    [:name, :description, :image_url, :manufacturer]
  end

  def self.float_attributes
    [:width, :height, :lenght, :weight, :kwp, :price]
  end
  
  def self.integer_attributes
    [:structure_type]
  end
end
