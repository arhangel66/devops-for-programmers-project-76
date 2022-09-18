install:
	ansible-galaxy install -r requirements.yml

deploy:
	make env & ansible-playbook playbook.yml -i inventory.ini --ask-vault-password


env:
	cp  .env.example .env

vault edit:
	ansible-vault edit group_vars/webservers/vault.yml