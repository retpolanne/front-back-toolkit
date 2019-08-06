PYTHON_DIR=python-app
NODE_DIR=react-app
INSTALL_FLAG=
DEFAULT_NAME=front-back-toolkit
ALT_NAME=front_back_toolkit

ifdef ENV
INSTALL_FLAG=--$(ENV)
endif

rename:
	find . -path './.git' -prune -o -path ./Makefile -prune -o -path './react-app/assets' -prune -o -path './react-app/node_modules' -prune -o -exec sed -i "" 's/$(DEFAULT_NAME)/$(NAME)/g' {} \;
	find . -path './.git' -prune -o -path ./Makefile -prune -o -path './react-app/assets' -prune -o -path './react-app/node_modules' -prune -o -exec sed -i "" 's/$(ALT_NAME)/$(NAME)/g' {} \;

install-python-deps:
	cd $(PYTHON_DIR) && pipenv install $(INSTALL_FLAG)

install-node-deps:
	cd $(NODE_DIR) && npm install $(INSTALL_FLAG)

run-backend:
	cd $(PYTHON_DIR) && 

run-frontend:
	cd $(NODE_DIR) && npm start

test: test-frontend test-backend

test-frontend:
	cd $(NODE_DIR) && npm run testFinal

lint: lint-frontend lint-backend

lint-frontend:
	cd $(NODE_DIR) && npm run lint

release-frontend:
	cd $(NODE_DIR) && npm run publish

bumpversion:
	bumpversion --dry-run $(RELEASE) --allow-dirty --verbose
