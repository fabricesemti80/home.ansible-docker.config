.PHONY: default
default: nas

nas:
	@echo " \e[0;35m ---> Building NAS server \e[0m "
	-	@ansible-playbook nas.yml -b -K
