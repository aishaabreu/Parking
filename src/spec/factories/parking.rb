def random_plate()
  "#{[*'A'..'Z'].sample(3).join}-#{[*'0'..'9'].sample(4).join}"
end

FactoryGirl.define do
  factory :parking do
    plate     { random_plate }
    output  { Faker::Date.forward(10) }
    paid       { Faker::Boolean.boolean }
  end
end
