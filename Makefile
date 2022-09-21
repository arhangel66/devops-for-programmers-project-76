install:
	ansible-galaxy install -r requirements.yml

deploy:
	ansible-playbook playbook.yml -i inventory.ini --ask-vault-password


vault edit:
	ansible-vault edit group_vars/webservers/vault.yml