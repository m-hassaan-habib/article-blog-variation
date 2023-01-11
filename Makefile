be-setup:
	bundle install
	rails db:drop
	rails db:create
	rails db:migrate
	rails db:seed

be-server:
	bundle exec rails server -p 3001

fe-setup:
	npm install

fe-server:
	npm start -- --port=1234
