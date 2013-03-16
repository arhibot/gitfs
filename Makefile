#!/usr/bin/make -f
ENV_NAME=env


example: pythonenv gitrepo
	env/bin/python gitfs.py

pythonenv: $(ENV_NAME)/bin/activate
	. $(ENV_NAME)/bin/activate; pip install -r requirements.txt

$(ENV_NAME)/bin/activate:
	virtualenv $(ENV_NAME)

gitrepo:
	git init --bare git_test
