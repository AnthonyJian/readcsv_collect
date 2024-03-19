import pandas as pd

# Load your data
file_path = "data_with_classes.csv"
df = pd.read_csv(file_path)

# Initialize lists to hold data for each class
matclass1 = []
matclass2 = []
matclass3 = []

# Iterate through each row of the DataFrame
for index, row in df.iterrows():
    # Extract data as a list, excluding the Class column
    data = row.iloc[:-1].tolist()
    if row['Class'] == 1:
        matclass1.append(data)
    elif row['Class'] == 2:
        matclass2.append(data)
    elif row['Class'] == 3:
        matclass3.append(data)

# Convert lists to DataFrames
matclass1_df = pd.DataFrame(matclass1)
matclass2_df = pd.DataFrame(matclass2)
matclass3_df = pd.DataFrame(matclass3)

# Display DataFrames
print(matclass1_df)
print(matclass2_df)
print(matclass3_df)
