"""
One-line desciption of the script

Longer Description of the script
"""


# import modules/packages at the top of the script
# remember to make a requirements.txt file with the package versions
import numpy as np
import dclab


# write your script (this example is taken from the dclab website)
# remember to run flake8 on your script before uploading it
ds = dclab.new_dataset("fb719fb2-bd9f-817a-7d70-f4002af916f0")

amin, amax = ds["area_um"].min(), ds["area_um"].max()
ds.config["filtering"]["area_um min"] = (amax + amin) / 2
ds.config["filtering"]["area_um max"] = amax
ds.apply_filter()

for ii in range(20):
    image = ds["image"][ii]
    mask = ds["mask"][ii]
    # this is equivalent to ds["bright_avg"][ii]
    bright_avg = np.mean(image[mask])
    print(f"average brightness of event {ii}: {bright_avg:.1f}")
