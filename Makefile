provision:
	ansible-playbook -k -i provision/hosts provision/site.yml -vv -K

deploy:
	ansible-playbook -k -i provision/hosts provision/site.yml -vv -K --tags "deploy"
