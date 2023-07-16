.PHONY: default
default: nas-dry auto-dry

all:
	@echo " \e[0;35m ---> Building ALL servers \e[0m "
	-	@ansible-playbook playbooks/nas-play.yml -e targets=nas_grp -b -K
	-	@ansible-playbook playbooks/auto-play.yml -e targets=auto_grp -b -K

# build my NAS
nas:
	@echo " \e[0;35m ---> Building NAS server \e[0m "
	-	@ansible-playbook playbooks/nas-play.yml -e targets=nas_grp -b -K

# build my NAS dry-run
nas-dry:
	@echo " \e[0;35m ---> Building NAS server [dry-run!] \e[0m "
	-	@ansible-playbook playbooks/nas-play.yml -e targets=nas_grp -b -K --check --diff

# build my AUTO server
auto:
	@echo " \e[0;35m ---> Building AUTO server \e[0m "
	-	@ansible-playbook playbooks/auto-play.yml -e targets=auto_grp -b -K

# build my AUTO server dry-run
auto-dry:
	@echo " \e[0;35m ---> Building AUTO server [dry-run!] \e[0m "
	-	@ansible-playbook playbooks/auto-play.yml -e targets=auto_grp -b -K --check --diff