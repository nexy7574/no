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

dart:
	docker run -it --rm -v ./src/:/root/ dart dart compile exe no.dart
	$(INSTALL) src/no.exe /usr/local/bin/no
	rm src/no.exe

kotlin:
	cd $(mktemp no-XXXX)
	wget --show-progress -qO kotlin-1.9.23.tar.gz https://github.com/JetBrains/kotlin/releases/download/v1.9.23/kotlin-native-linux-x86_64-1.9.23.tar.gz
	tar xzf kotlin-1.9.23.tar.gz
	./kotlin-native-linux-x86_64-1.9.23/bin/kotlinc-native src/no.kt
	$(INSTALL) program.kexe /usr/local/bin/no

rust:
	rustc src/no.rs
	$(INSTALL) no /usr/local/bin/no
	rm no

all: c cpp shell dart rust kotlin
