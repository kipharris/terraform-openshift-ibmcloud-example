apply:
	make infrastructure && \
	make rhnregister && \
	make dnscerts && \
	make etchosts && \
	make openshift

init:
	terraform init 
	terraform get

infrastructure:
	terraform apply -target=module.infrastructure -auto-approve

rhnregister:
	terraform apply -target=module.rhnregister -auto-approve

dnscerts:
	terraform apply -target=module.dnscerts -auto-approve

etchosts:
	terraform apply -target=module.etchosts -auto-approve

inventory:
	terraform apply -target=module.inventory -auto-approve

openshift:
	terraform apply -target=module.openshift -auto-approve

kubeconfig:
	terraform apply -target=module.kubeconfig -auto-approve	
	export KUBECONFIG=$(terraform output kubeconfig)

sshbastion:
	ssh -i ~/.ssh/openshift_rsa root@`terraform output bastion_public_ip`

destroy-dnscerts:
	terraform destroy -target=module.dnscerts -auto-approve

destroy-rhnregister:
	terraform destroy -target=module.rhnregister -auto-approve

destroy-infrastructure:
	terraform destroy -target=module.infrastructure -auto-approve


