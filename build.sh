#!/usr/bin/env bash 
# exit on error 
set -o errexit

# poetry install
pip install -r requirements.txt

python3 manage.py collectstatic --noinput 
python3 manage.py migrate
