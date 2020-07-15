FactoryBot.define do
  factory :power_generator do
    name { "John" }
    description  { "Doe" }
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
