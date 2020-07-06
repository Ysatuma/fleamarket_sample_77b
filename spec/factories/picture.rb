FactoryBot.define do
  factory :picture do
    image{ Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/factories/test.png')) }
    product_id{"1"}
  end
end
