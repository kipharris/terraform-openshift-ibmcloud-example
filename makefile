apply:
	terraform init && terraform get
	make infrastructure && \
	make rhnregister && \
	make letsencrypt && \
	make cloudflare && \
	make inventory && \
	make openshift

infrastructure:
	terraform apply -target=module.infrastructure -auto-approve

rhnregister:
	terraform apply -target=module.rhnregister -auto-approve

letsencrypt:
	terraform apply -target=module.letsencrypt -auto-approve

cloudflare:
	terraform apply -target=module.cloudflare  -auto-approve

inventory:
	terraform init && terraform get && terraform apply -target=module.inventory -auto-approve

openshift:
	terraform init && terraform get && terraform apply -target=module.openshift -auto-approve

sshbastion:
	ssh -i ~/.ssh/openshift_rsa root@`terraform output bastion_public_ip`

destroy:
	terraform destroy -auto-approve

