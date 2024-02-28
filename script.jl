### VARIABLES ###

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
print('\n')

### BOOLEAN OPERATORS ###
println(false)
println(!false)
println(false | true)
println(false & true)
println(3 == 4)
println(3 == 3)
println(10 == 10.0)
println(32.40 isa Float64)

### FUNCTIONS ###
