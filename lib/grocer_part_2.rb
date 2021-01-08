require_relative './part_1_solution.rb'

cart_test = [
  {:item => "AVOCADO", :price => 3.00, :clearance => true},
  {:item => "AVOCADO", :price => 3.00, :clearance => true},
  {:item => "AVOCADO", :price => 3.00, :clearance => true},
  {:item => "KALE",    :price => 3.00, :clearance => false},
  {:item => "KALE",    :price => 3.00, :clearance => false},
  {:item => "KALE",    :price => 3.00, :clearance => false},
  {:item => "BEER",    :price => 9.00, :clearance => false}
]

coupons_test = [
  {:item => "BEER", :num => 1, :cost => 5.00},
  {:item => "AVOCADO", :num => 2, :cost => 5.00}
]

def apply_coupons(cart, coupons)
  #cart = [{:item=>"AVOCADO", :price=>3.0, :clearance=>true, :count=>3},{:item=>"KA...}]
  coupons.map { |coupon|
    if find_item_by_name_in_collection(coupon[:item], cart)
    item = find_item_by_name_in_collection(coupon[:item], cart)
      if item[:count] >= coupon[:num]
        item[:count] -= coupon[:num]
        coupon[:item] = "#{coupon[:item]} W/COUPON"
        coupon[:price] = coupon[:cost] / coupon[:num]
        coupon[:clearance] = item[:clearance]
        coupon[:count] = coupon[:num]
        coupon.delete(:num)
        coupon.delete(:cost)
        cart.push(coupon)
      end
    end
  }
  #pp cart
  cart
end

#apply_coupons(consolidate_cart(cart_test), coupons_test)

def apply_clearance(cart)
  cart.map { |item|
    if item[:clearance] === true
      item[:price] *= 0.8
      item[:price] = item[:price].round(2)
    end
  }
  #pp cart
  cart
end

#apply_clearance(consolidate_cart(cart_test))

def checkout(consolidate_cart(cart), coupons)
  apply_coupons(cart, coupons)
  apply_clearance(cart)

  pp cart
end

checkout(cart_test, coupons_test)
