Code-Sharing-Python
===================

A repository for storing Python scripts and tools that may be useful for others.


Adding scripts and tools
------------------------

If you have a script or a tool (e.g. function) that you think may be useful
for others, you can add it to this repository. We hope to soon make
an accompanying video describing the upload process.


Add files via GitHub website (recommended for beginners)
********************************************************

#. Fork this repository. Go to your forked repository. This is your own
   copy of the original repository. Any changes or mistakes you make on your
   fork don't effect the original repository so go nuts!

#. You will need to upload your files into the ``scripts`` folder.
    - Your script should be in a ``<my_script_name>.py`` file in a suitably
      named subfolder. e.g. ``scripts/<my_script_topic>``. If this folder
      doesn't exist yet, don't worry, that can be fixed in the future.

#. Find the "Add file" button to the left of the green "Code" button.
   Click "Add file" > "Upload files". Drag and drop the script/tool files and
   the requirements.txt file or choose your files manually.
    - You can use the ``scripts/examples/example_1/example_script.py`` files as a template for your script.
    - You can use the current ``scripts/examples/example_1/requirements.txt`` files as a template for yours.

#. Add a commit title and short description.

#. **NB**: Choose "Create a new branch...", choose a simple branch name,
   and click "Commit changes".

#. Create a pull request on the `Code-Sharing-Python <https://github.com/GuckLab/Code-Sharing-Python/pulls>`_ repo
    - The maintainers will discuss the code and see if anything can be improved.
    - When the code is ready, the new branch will be merged into the main branch
      and now is useable by anyone.



Add files via git command line
******************************

#. Fork this repository. Go to your forked repository. This is your own
   copy of the original repository. Any changes or mistakes you make on your
   fork don't effect the original repository so go nuts!
#. Clone your forked repository.
#. On the cloned repo (locally) create and checkout a new git branch
   e.g. ``newbranch``.

#. Choose where to put your script/tool in the folder directory.
    - If it is a script, place the script in the relevant folder in
      ``./scripts``.
#. Give your script a short but desciptive name.

#. Create a ``requirements.txt`` file and place it in the same folder
   as your new script/tool. Use ``scripts/examples/example_1/requirements.txt``
   as a template.

#. Make sure the script/tool runs by testing it within a venv (virtual environment).
    - To do this, just ``cd`` to the Code-Sharing-Python root folder.
      folder and run ``source tests/bash_scripts/run_all_scripts.sh``.

#. ``cd`` to the root folder (Code-Sharing-Python).
#. Check the code syntax with flake8.
    - Run ``flake8 .``
    - Fix any syntax errors that are output. If this command returns nothing,
      then there are no mistakes.
#. Host an example dataset somewhere remotely (not in the repo!)
    - For RTDC files, DCOR is a great option for remote hosting of data.

#. Now you have to upload the file to the repository using git
    - Run the following:
        - ``git add -A``
        - ``git commit short-description-of-addition``
        - ``git push -u origin newbranch``

#. Create a pull request on the `Code-Sharing-Python <https://github.com/GuckLab/Code-Sharing-Python/pulls>`_ repo
    - The maintainers will discuss the code and see if anything can be improved.
    - When the code is ready, the newbranch will be merged into the main branch
      and now is useable by anyone.
