#!/usr/bin/env bash
# This script is used for the Open Ondemand portal.
# You can use it as a reference for creating a custom ~/portal/jupyter/*.sh file

ml purge  # Ensure we don't have any conflicting modules loaded

# Load whichever modules you wish
ml Python/3.12.3-GCCcore-13.3.0

# You need to have a version of jupyter (e.g. JupyterLab or IPython from the module system)
# ml jupyterlab-h5web/12.3.0-foss-2023a

# You can also activate a custom compatible virtual environment (built with the same modules)
# Remember to use the kernel installed for your virtualenv:
# https://www.c3se.chalmers.se/documentation/applications/python/#accessing-virtual-environments-in-jupyter-notebook
source /cephyr/NOBACKUP/groups/c3se2025-3-18/venvs/bev_venv/bin/activate

# You can launch jupyter notebook or lab, but you must specify the config file as below (do not modify at all):
jupyter lab --config="${CONFIG_FILE}" --FileCheckpoints.checkpoint_dir='/cephyr/NOBACKUP/groups/c3se2025-3-18/.ipynb_uni'
