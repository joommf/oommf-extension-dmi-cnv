test-all:
	tclsh $(OOMMFTCL) boxsi +fg examples/isolated_sk_DMI_Cnv.mif -exitondone 1
	ls -lh examples
	tclsh $(OOMMFTCL) boxsi +fg examples/sk_lattice_DMI_Cnv_PBCs.mif -exitondone 1
	ls -lh examples

travis-build: SHELL:=/bin/bash
travis-build:
	docker build --no-cache -t dockertestimage .
	docker run -ti -d --name testcontainer dockertestimage
	docker exec testcontainer make test-all
	docker stop testcontainer
	docker rm testcontainer
