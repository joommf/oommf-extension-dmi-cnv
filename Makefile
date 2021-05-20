test-all:
	ls -lh examples
	for FILE in `find examples -name "INPUT_*"`; do \
		tclsh $(OOMMFTCL) boxsi +fg $$FILE -exitondone 1; \
		ls -lh examples; \
	done

travis-build:
	docker build --no-cache -t dockertestimage .
	docker run -ti -d --name testcontainer dockertestimage
	docker exec testcontainer make test-all
	docker stop testcontainer
	docker rm testcontainer
