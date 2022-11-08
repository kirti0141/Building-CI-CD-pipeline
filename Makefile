install:
	pip install --upgrade pip && \
		pip install -r requirements.txt && \
		pip install locust && \
		pip install locust-plugins
test:
	#python -m pytest -vv test_hello.py
	 

lint:
	pylint --disable=R,C hello.py
all: install lint test
