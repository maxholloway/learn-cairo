# Computes the sum of the memory elements at addresses:
#   arr + 0, arr + 1, ..., arr + (size - 1).
func array_sum(arr : felt*, size) -> (sum):
    if size == 0:
        return (sum=0)
    end

    # size is not zero.
    let (sum_of_rest) = array_sum(arr=arr + 1, size=size - 1)
    return (sum=[arr] + sum_of_rest)
end

# Excercise: Write a function that computes the product of all the even entries of an array ([arr] * [arr + 2] * ...). 
# You may assume that the length is even. (You may want to wait with running it until you read Using array_sum().)
func array_even_product(arr : felt*, size) -> (product):
    if size == 0:
        return (product=1)
    end

    let (prod_of_rest) = array_even_product(arr=arr+2, size=size-2)
    return (product=[arr] * prod_of_rest)
end