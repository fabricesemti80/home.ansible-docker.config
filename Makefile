.PHONY: default
default: nas-dry

# build my NAS
nas:
	@echo " \e[0;35m ---> Building NAS server \e[0m "
	-	@ansible-playbook playbooks/nas.yml -e targets=nas -b -K

# build my NAS dry-run
nas-dry:
	@echo " \e[0;35m ---> Building NAS server [dry-run!] \e[0m "
	-	@ansible-playbook playbooks/nas.yml -e targets=nas -b -K --check --diff

# build my AUTO server
auto:
	@echo " \e[0;35m ---> Building AUTO server \e[0m "
	-	@ansible-playbook playbooks/auto.yml -e targets=auto -b -K

# build my AUTO server dry-run
auto-dry:
	@echo " \e[0;35m ---> Building AUTO server [dry-run!] \e[0m "
	-	@ansible-playbook playbooks/auto.yml -e targets=auto -b -K --check --diff