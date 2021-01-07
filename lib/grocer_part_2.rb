require_relative './part_1_solution.rb'

cart = [
  {:item => "AVOCADO", :price => 3.00, :clearance => true},
  {:item => "AVOCADO", :price => 3.00, :clearance => true},
  {:item => "AVOCADO", :price => 3.00, :clearance => true},
  {:item => "KALE", :price => 3.00, :clearance => false},
  {:item => "BLACK_BEANS", :price => 2.50, :clearance => false},
  {:item => "BLACK_BEANS", :price => 2.50, :clearance => false}
]

coupons = [
  {:item => "AVOCADO", :num => 5, :cost => 20.00},
  {:item => "BLACK_BEANS", :num => 2, :cost => 3.00},
  {:item => "CHEESE", :num => 2, :cost => 3.00},
]

def apply_coupons(cart, coupons)
  new_cart = consolidate_cart(cart)
  # new_cart = [{:item=>"AVOCADO", :price=>3.0, :clearance=>true, :count=>3},{:item=>"KA...}]
  coupons.map { |coupon|
    item = find_item_by_name_in_collection(coupon[:item], cart)
    #p coupon
    p item[:count]
  }
end

apply_coupons(cart, coupons)

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
