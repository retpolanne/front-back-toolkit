PYTHON_DIR=python-app
NODE_DIR=react-app
INSTALL_FLAG=
DEFAULT_NAME=front-back-toolkit
ALT_NAME=frontbacktoolkit
DEV_SETTINGS=project.settings.base

ifdef ENV
INSTALL_FLAG=--$(ENV)
endif

ifndef SETTINGS
SETTINGS=$(DEV_SETTINGS)
endif

rename:
	find . -path './.git' -prune -o -path ./Makefile -prune -o -path './react-app/assets' -prune -o -path './react-app/node_modules' -prune -o -exec sed -i "" 's/$(DEFAULT_NAME)/$(NAME)/g' {} \;
	find . -path './.git' -prune -o -path ./Makefile -prune -o -path './react-app/assets' -prune -o -path './react-app/node_modules' -prune -o -exec sed -i "" 's/$(ALT_NAME)/$(NAME)/g' {} \;

install-python-deps:
	cd $(PYTHON_DIR) && pipenv install $(INSTALL_FLAG)

install-node-deps:
	cd $(NODE_DIR) && npm install $(INSTALL_FLAG)

run-backend:
	cd $(PYTHON_DIR) && pipenv run python manage.py runserver --settings=$(SETTINGS)

run-frontend:
	cd $(NODE_DIR) && npm start

build-backend-docker:
	cd $(PYTHON_DIR) && docker build .

makemigrations:
	cd $(PYTHON_DIR) && pipenv run python manage.py makemigrations

migrate:
	cd $(PYTHON_DIR) && pipenv run python manage.py migrate

test: test-frontend test-backend

test-frontend:
	cd $(NODE_DIR) && npm run testFinal

test-backend:
	cd $(PYTHON_DIR) && pipenv run python manage.py test $(TEST) --settings=$(SETTINGS)

lint: lint-frontend lint-backend

lint-frontend:
	cd $(NODE_DIR) && npm run lint

lint-backend:
	cd $(PYTHON_DIR) && find . -type f -name "*.py" -exec pipenv run pylint {} \;

build-frontend:
	cd $(NODE_DIR) && npm run build -- $(PLATFORM)

build-backend:
	cd $(PYTHON_DIR) && python setup.py sdist

release-frontend:
	cd $(NODE_DIR) && npm run publish

bumpversion:
	bumpversion --dry-run $(RELEASE) --allow-dirty --verbose
