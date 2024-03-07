INSTALL = install -o root -g root -m 0755
c:
	gcc -o .no src/no.c 
	$(INSTALL) .no /usr/local/bin/no
	rm .no

cpp:
	g++ -o .no src/no.cpp
	$(INSTALL) .no /usr/local/bin/no

shell:
	$(INSTALL) src/no.sh /usr/local/bin/no

