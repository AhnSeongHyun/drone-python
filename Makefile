
check:
	isort --recursive --check-only ./tests ./utils.py
	black -S -l 79 --check  ./tests ./utils.py
	pylint ./tests ./utils.py

test:
	python -m pytest -vv --disable-warnings

requirements:
	pipenv lock --pre
	pipenv lock -r > requirements.txt
	pipenv lock --dev -r > requirements-dev.txt

format:
	isort -rc -y ./utils.py tests
	black -S -l 79 ./utils.py tests