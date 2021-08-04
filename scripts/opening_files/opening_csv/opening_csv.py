"""
Open an example .csv file

Here we open an example csv file. The csv file should be stored
remotely somewhere...

"""


# import modules/packages at the top of the script
# remember to make a requirements.txt file with the package versions
import pandas as pd


# write your script (this example is taken from the Python-Workshops repo)
# remember to run flake8 on your script before uploading it
df = pd.read_csv("data.csv")

print(type(df))

print(df.head())

# do some analysis...
