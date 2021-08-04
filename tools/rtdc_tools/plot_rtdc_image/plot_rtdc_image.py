"""
Function for plotting an rtdc image

This is just an example function. It isn't very useful.
"""


# import modules/packages at the top of the script
# remember to make a requirements.txt file with the package versions
import dclab
import matplotlib.pyplot as plt

# write your tool (function, class)
# remember to run flake8 on your script before uploading it


def plot_rtdc_image(rtdc_ds, image_n):
    """Plot the nth image in an rtdc dataset

    Parameters
    ----------
    rtdc_ds : rtdc dataset
    image_n : int
        The index of the image you wish to plot

    """
    fig, ax = plt.subplots(1, 1, figsize=(9, 5))
    ax.imshow(rtdc_ds["image"][image_n])
    plt.show(block=False)
    plt.pause(3)
    plt.close()


# example use of the above function
ds = dclab.new_dataset("fb719fb2-bd9f-817a-7d70-f4002af916f0")
plot_rtdc_image(rtdc_ds=ds, image_n=5)
