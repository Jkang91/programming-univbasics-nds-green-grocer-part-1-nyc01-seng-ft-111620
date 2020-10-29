require 'pry'

def find_item_by_name_in_collection(name, collection)
  counter = 0 
  while counter < collection.length
    if collection[counter][:item] == name 
      return collection[counter] 
      
end

def consolidate_cart(cart)
  new_cart = []
  counter = 0 
  while counter < cart.length 
    new_cart_item = find_item_by_name_in_collection(cart[counter][:item], new_cart)
    # binding.pry
    if new_cart_item != nil
      new_cart_item[:count]+= 1
    else 
      new_cart_item = {
        :item => cart[counter][:item],
        :count => 1 
      }
      new_cart << new_cart_item
      # binding.pry
    end
    counter += 1
  end
  new_cart
  # binding.pry
end


# Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.

 # collection.each do |item|
  #   if item.values.join == name
  #     return item
  #   end
  # end
  # return nil
  # binding.pry
  