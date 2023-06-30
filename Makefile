
# Create python virtualenv & source it
setup:
	python3 -m venv ~/.env_vlcweb
	source ~/.env_vlcweb/bin/activate

# This should be run from inside a virtualenv
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

# Additional, optional, tests could go here
test:
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

# See local hadolint install instructions:   https://github.com/hadolint/hadolint
# This is linter for Dockerfiles
# This is a linter for Python source code linter: https://www.pylint.org/
# This should be run from inside a virtualenv
lint:
	hadolint Dockerfile
	pylint --disable=R,C,W1203,W1202 app.py

all: install lint test
