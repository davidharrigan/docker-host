provision:
	ansible-playbook -k -i provision/hosts provision/site.yml -vv -K --vault-password-file vault_pass

deploy:
	ansible-playbook -k -i provision/hosts provision/site.yml -vv -K --tags "deploy" --vault-password-file vault_pass

encrypt:
	ansible-vault encrypt provision/roles/davidharrigan.net/vars/secrets.yml --vault-password-file vault_pass

decrypt:
	ansible-vault decrypt provision/roles/davidharrigan.net/vars/secrets.yml --vault-password-file vault_pass
