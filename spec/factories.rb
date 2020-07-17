FactoryBot.define do
  factory :power_generator do
    name { "CELLS MONO" }
    description  { "Potência no ponto máximo de potência - 365W Corrente de Curto Circuito - 9,75A Tensão em Circuito Aberto - 48,16V Corrente no ponto máximo de potência - 9,27A Tensão no ponto máximo de potência - 39,38V Eficiência =18,8% Tolerância de potências +5W Desempenho mínimo sob condições de teste padrão STC (1000 W/m², 25 °C, espectro AM 1,5 G)" }
    image_url { "http://localhost:3000/assets/hello_world.png" }
    manufacturer { "Portal Solar" }
    structure_type { 1 }
    price { 100.0 }
    height { 0.0 }
    width { 0.0 }
    lenght { 0.0 }
    weight { 0.0 }
    kwp { 0.0 }
  end
end
