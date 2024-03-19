using CSV
using DataFrames
using PrettyTables

# Load your data
file_path = "data_with_classes.csv"
df = CSV.read(file_path, DataFrame)

# Initialize matrices to hold data for each class
# Start with empty arrays
global matclass1 = Array{Float64,2}(undef, 0, size(df, 2) - 1)
global matclass2 = Array{Float64,2}(undef, 0, size(df, 2) - 1)
global matclass3 = Array{Float64,2}(undef, 0, size(df, 2) - 1)

#Iterate through each row of the DataFrame
for row in eachrow(df)
    global matclass1, matclass2, matclass3
    # Extract data as an array, excluding the Class column
    data = collect(row[1:end-1])'
    if row.Class == 1
        matclass1 = vcat(matclass1, data)
    elseif row.Class == 2
        matclass2 = vcat(matclass2, data)
    elseif row.Class == 3
        matclass3 = vcat(matclass3, data)
    end
end
pretty_table(matclass1)
pretty_table(matclass2)
pretty_table(matclass3)