# methodswith (get all the methods that takes a String as an argument)
first(methodswith(String), 5)

# vectorization (broadcastin with dot .)
function calc(x; d::Int64=10)
  return x * d
end
calc.([1, 2])

(x -> x*3).([3, 4])
(y -> y + 2).([1, 2])

# functions with a bang ! - modify the argument(s)
function add_one!(V)
  for i in eachindex(V)
    V[i] += 1
  end
  return nothing
end

my_data = [1, 2, 3]
add_one!(my_data)
my_data

### STRINGS ###
text = """
Long text with "quotation"
"""
println("Hello" * "Goodbye")
join(["oi", "tchau"], " ")

name_s = "Lucas"
println("My name is $name_s")
uppercase(name_s)
titlecase(name_s)

contains(name_s, "Lu")
startswith(name_s, "L")
endswith(name_s, "s")

replace(name_s, "Lu" => "Gabs")
split(name_s, "c")

string(123)
parse(Int64, "23")
tryparse(Int64, "not a number") # returns nothing

### TUPLES ###
# fixed-lenght object container that can hold multiple different types
# IMMUTABLE object
# construct a tuple with ()

(2 , 3)
l = (2, "Lucas")
typeof(l)

# named tuple
(name="Jerry", age=50)
typeof((name="Jerry", age=50))
z = 2
w = 3
quick_named_tuple = (;z,w)

# index and fucntions on tuples
l[1]
numbers = (5, 10, 15)
numbers.*(2)
map((x,y,z) -> x*y*z, 2,3,4)

### RANGES ###
1:10
typeof(1:10)
typeof(2.0:5.0)
[x for x in 1:2:10] # step of 2
println([x for x in 1:10])
println(collect(20:10:100))
typeof(collect(20:10:100)) # collection values on a Array{Int64, 1}

### Arrays ###
