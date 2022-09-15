install:
	ansible-galaxy install -r requirements.yml

deploy:
	make env & ansible-playbook playbook.yml -i inventory.ini

env:
	cp  .env.example .env
