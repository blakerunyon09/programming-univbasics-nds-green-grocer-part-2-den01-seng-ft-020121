require_relative './part_1_solution.rb'

cart_test = [
  {:item => "AVOCADO", :price => 3.00, :clearance => true},
  {:item => "AVOCADO", :price => 3.00, :clearance => true},
  {:item => "AVOCADO", :price => 3.00, :clearance => true},
  {:item => "KALE", :price => 3.00, :clearance => false},
  {:item => "BLACK_BEANS", :price => 2.50, :clearance => false},
  {:item => "BLACK_BEANS", :price => 2.50, :clearance => false}
]

coupons_test = [
  {:item => "AVOCADO", :num => 2, :cost => 20.00},
  {:item => "BLACK_BEANS", :num => 3, :cost => 3.00},
  {:item => "CHEESE", :num => 2, :cost => 3.00},
]

def apply_coupons(cart, coupons)
  # cart = [{:item=>"AVOCADO", :price=>3.0, :clearance=>true, :count=>3},{:item=>"KA...}]
  coupons.map { |coupon|
    if find_item_by_name_in_collection(coupon[:item], cart)
    item = find_item_by_name_in_collection(coupon[:item], cart)
      if item[:count] > coupon[:num]
        item[:count] -= coupon[:num]
        coupon[:item] = "#{coupon[:item]} W/COUPON"
        coupon[:price] = coupon[:cost] / coupon[:num]
        coupon[:clearance] = true
        coupon.delete(:cost)
        cart.push(coupon)
      end
    end
  }
  pp cart
end

apply_coupons(consolidate_cart(cart_test), coupons_test)

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
