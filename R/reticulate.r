############################################################  
# Aim here is to start integrating with python objects.
# if we use reticulate we can access python objects in R.
# https://www.r-bloggers.com/r-and-python-how-to-integrate-the-best-of-both-into-your-data-science-workflow/
library(reticulate)
conda_list()

# Note if you have issues with loading the correct environment you need to restart R.
# more info
# reticulate::py_config()
# select conda env.

use_condaenv("//anaconda/envs/py3/bin/python")
# use_condaenv("//anaconda/envs/r-reticulate/bin/python")
# or 
path_to_python <- "//anaconda/envs/py3/bin/python"
use_python(path_to_python)

# packageVersion("reticulate")
repl_python()

# Sourcing Python scripts — 
# The source_python() function enables you to source 
# a Python script the same way you would source() an R script 
# (Python functions and objects defined within the script become directly available to the R session).

# import your django models into R.
django_app                 <- "/Users/wheeldogg/Dropbox/Documents/workspace/projects/web-development/django_unleashed/DjangoUnleashed-1.8"
python_read_django_objects <- "/Users/wheeldogg/Dropbox/Documents/workspace/projects/web-development/access_objects_in_r/python/django_objects_import.py"
python_read_django_objects  <- '/test/your _python_file.py'

# source the python file.
source_python(python_read_django_objects)
# class(source_python(python_read_django_objects))

############################################################  
# run python directly.
# repl_python()
# import pandas
# exit
# Enter exit within the Python REPL to return to the R prompt.
# Note that Python code can also access objects from within the R session using the r object (e.g. r.flights).
# See the repl_python() documentation for additional details on using the embedded Python REPL.
############################################################
############################################################  
# To run this in the command line.
# Rscript -e 'Sys.which("python"); library(reticulate); sys <- reticulate::import("sys"); sys$executable;   packageVersion("reticulate"); reticulate::py_config()'
# python 
############################################################  
