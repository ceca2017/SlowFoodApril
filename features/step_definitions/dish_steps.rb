Given(/^the following dishes exist$/) do |table|
  table.hashes.each do |hash|
    rest = Restaurant.find_by(name: hash["restaurant"])
    hash["restaurant"] = rest.id
    hash["menu_name"] = Menu.where(name: hash["menu_name"], restaurant_id: rest.id).first
    FactoryGirl.create(:dish, hash)
  end
end
