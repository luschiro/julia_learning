### VARIABLES ###
println("\n---- VARIABLES ----")
# definição de variáveis
name = "Lucas"
age = 35
println(name, " age is ", age)

# com assertion operator (precisa ter atribuição de valor)
cpf::String = "368.933"
println("cpf: ", cpf)
println(typeof(cpf))
print('\n')


### STRUCTS ###
println("\n---- STRUCTS ----")
# structs (or composite types) - variáveis com relações
struct Pessoa
  name::String
  age::Int64
end

# campos 
fieldnames(Pessoa)

# iniciando uma Pessoa

gabs = Pessoa("Gabs", 35)
gabs
#gabs.name = "Gabriel"

# mutable structs (use with caution)
mutable struct PessoaMutable
  name_m::String
  age_m::Int64
end

gabs_m = PessoaMutable("Gabs", 35)
gabs_m.name_m = "Gabriel"

println("Immutable - ", gabs)
println("Mutable - ", gabs_m)

### BOOLEAN OPERATORS ###
println("\n---- BOOLEAN OPERATORS ----")
println(false)
println(!false)
println(false | true)
println(false & true)
println(3 == 4)
println(3 == 3)
println(10 == 10.0)
println(32.40 isa Float64)

### FUNCTIONS ###
println("\n---- FUNCTIONS ----")

# normal
function sum(a, b)
  result = a + b
  return result
end
println("sum: ", sum(10, 56))
# result - variable within function is local - raises erros not defined

# compact
sub(c, d) = c - d
println("sub: ", sub(10,9))

# with type definition
function mult(e, f::Float64)
  return e * f
end
mult(2, 5.0)

# with multiple methods
function divv(g, h::Int64)
  println("div with int")
  return g / h
end
function divv(g, h::Float64)
  println("div with float")
  return g / h
end
println(methods(divv))
divv(10, 2)
divv(10, 3.0)

# with abastract types
function test_integer(x::Integer)
  println("x is an Integer? ", x isa Integer)
  return x
end
test_integer(1)


### MULTIPLE DSPATCH ###
println(("\n---- Multiple Dispatch ----"))

struct Game
  title::String
  year_release::Int64
end
Base.show(io::IO, g::Game) = println("The game ", g.title, " was realeased in ", g.year_release)

red_dead = Game("Red Dead Redemption", 2014)
show(red_dead)
show(gabs)