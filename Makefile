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