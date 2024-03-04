shell:
	@~/.venvs/bumpv/bin/ipython

build:
	@~/.venvs/bumpv/bin/bumpv bump $(part)
	@~/.venvs/bumpv/bin/python setup.py sdist

upload:
	~/.venvs/bumpv/bin/twine upload dist/*
	rm -rf ./dist

install:
	@python3 -m venv ~/.bumpv
	@~/.bumpv/bin/pip install .
	@echo 'alias bumpv="~/.bumpv/bin/bumpv"'

release: build upload
