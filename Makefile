.PHONY: install database serve

install:
	bundle install; \
	npm install;

database:
	bundle exec rails db:setup

serve:
	bundle exec rails s --binding 0.0.0.0
