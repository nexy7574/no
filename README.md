# No

An alternative to the GNU program, yes. For when you're having a bad day.

## Installing

None of these programs have any dependencies outside of their respective compilers or interpreters.

<details>
<summary>Instructions per-language</summary>
### C
```sh
gcc -o no src/no.c
sudo mv no /usr/local/bin/no
```

### C++
```sh
g++ -o no src/no.cpp
sudo mv no /usr/local/bin/no
```

### C#
```sh
# Install dotnet-sdk-8.0
# apt install dotnet-sdk-8.0
# pacman -S dotnet-sdk
# dnf install dotnet
cd src
dotnet build
mv bin/Debug/net8.0/src /usr/local/bin/no
```

### Dart
```sh
# There's multiple ways to get dart - see https://dart.dev/get-dart
# I used docker here.
docker run -it --rm -v ./src/:/root/ dart dart compile exe no.dart
mv src/no.exe /usr/local/bin/no
```

### Go
```sh
# Install Go
# https://www.digitalocean.com/community/tutorials/how-to-install-go-on-ubuntu-20-04
# pacman -S go
# dnf install go
go build src/no.go
sudo mv no /usr/local/bin/no
```

### Java
```sh
# Install Java (written on Java 17, but it should run on any java in theory)
java src/no.java
```

### JavaScript
```sh
node src/no.js
```

### Kotlin
```sh
# Download Kotlin's native compiler
wget -O kotlin-1.9.23.tar.gz https://github.com/JetBrains/kotlin/releases/download/v1.9.23/kotlin-native-linux-x86_64-1.9.23.tar.gz
tar xzvf kotlin-1.9.23.tar.gz
kotlin-native-linux-x86_64-1.9.23/bin/kotlinc-native src/no.kt
mv no.kexe /usr/local/bin/no
```

### lisp
I have no idea. This no is untested.

### lua
```sh
# After installing lua
lua src/no.lua
```

### PHP
```sh
# After installing PHP
cd src
php -S localhost:8080
# Open your browser to localhost:8080
```

### PowerShell
```sh
# Install powershell: https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-linux?view=powershell-7.4
pwsh src/no.ps1
```

### Python
```sh
python3 src/no.py
```

### Ruby
```sh
ruby src/no.rb
```

### Rust
```sh
rustc src/no.rs
sudo mv no /usr/local/bin/no
```

### Shell/Bash
```sh
sudo mv src/no.sh /usr/bin/local/no
```

### TypeScript
```sh
npm i -g typescript
tsc src/no.ts
# node no.js
```
</details>

### Why?
Because saying no is an important part of life, and it should be included in your day-to-day operating system too.
I also just found it funny.
