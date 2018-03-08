test-all: SHELL:=/bin/bash
test-all:
	tclsh $$(OOMMFTCL) boxsi +fg examples/isolated_sk_DMI_Cnv.mif -exitondone 1
	tclsh $$(OOMMFTCL) boxsi +fg examples/sk_lattice_DMI_Cnv_PBCs.mif -exitondone 1

travis-build: SHELL:=/bin/bash
travis-build:
	docker build --no-cache -t dockertestimage .
	docker run -ti -d --name testcontainer dockertestimage
	docker exec testcontainer ls
	docker exec testcontainer make test-all
	docker stop testcontainer
	docker rm testcontainer
