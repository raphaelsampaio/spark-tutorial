run:
	@virtualenv . -p python3; \
	. bin/activate; \
	pip install -r requirements.txt; \
	python app.py