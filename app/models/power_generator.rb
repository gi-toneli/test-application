class PowerGenerator < ApplicationRecord
  validates :name, :description, :image_url, :manufacturer, :price, :kwp, presence: true
  validates :height, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 40 }
  validates :width, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
  validates :lenght, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 200 }
  validates :weight, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 3000 }

  enum structure_type: %i[
    metalico
    ceramico
    fibrocimento
    laje
    solo
    trapezoidal
  ]

  attr_accessor :destination, :freight

  def calc_freight
    self.freight = Correios::Frete::Calculador.new(:cep_origem => "04602-002",
            :cep_destino => '35300-187',
            :peso => self.length,
            :comprimento => self.lenght,
            :largura => self.width,
            :altura => self.height)
    self.freight.calcular_pac_gf
  end
end
