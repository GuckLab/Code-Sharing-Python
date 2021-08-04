"""
Open an example .csv file

Here we open an example csv file. The csv file should be stored
remotely somewhere...

"""


# import modules/packages at the top of the script
# remember to make a requirements.txt file with the package versions
import pandas as pd
import pathlib


# write your script (this example is taken from the Python-Workshops repo)
# remember to run flake8 on your script before uploading it
path = pathlib.Path(__file__).parents[3]
data_path = r"Examples/example_data/titanic.csv"

df = pd.read_csv(path / data_path)

print(type(df))

print(df.head())

# do some analysis...
