%builtins output

from starkware.cairo.common.alloc import alloc
from hellocairo1 import array_sum, array_even_product
from starkware.cairo.common.serialize import serialize_word

# Example of how to output to stdout from within Cairo.

func main{output_ptr : felt*}():
    const ARRAY_SIZE = 4

    # Allocate an array.
    let (ptr) = alloc()

    # Populate some values in the array.
    assert [ptr] = 9
    assert [ptr + 1] = 16
    assert [ptr + 2] = 25
    assert [ptr + 3] = 370

    # Call array_sum to compute the sum of the elements.
    # let (sum) = array_sum(arr=ptr, size=ARRAY_SIZE)

    # Call array_even_product
    let (prod) = array_even_product(arr=ptr, size=ARRAY_SIZE)

    # Write the sum to the program output.
    # serialize_word(sum)
    serialize_word(prod)

    return ()
end