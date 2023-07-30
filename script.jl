
# including libraries

using Plots

println("Loading OK")

println("First")
println("Secondddd")


function load_dir()
    println("We just entered a function!")
    CURRENT_DIR = pwd()
    return CURRENT_DIR
end

println("our current dir is ", load_dir())
x=[1,2,3]
y=x.^2

plot(x, y, seriestype=:scatter, yerr=1, xerr=0.5)