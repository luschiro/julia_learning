using Plots
using CSV
using DataFrames


CURRENTDIR = pwd()
file_name = "metamorphism_data.csv"
DATADIR = joinpath(CURRENTDIR, "metamorphism_data")
file_path = joinpath(DATADIR, "metamorphism_data.csv")


data = DataFrame(CSV.File(file_path))



data[1:5,:]