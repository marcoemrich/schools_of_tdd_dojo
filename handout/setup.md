# Setup: Schools of TDD

Please create a local setup that you can work with during the entire workshop.
You can bring a programming language and a tool of your choice.
We will provide two example setups for Typescript and Java.
If none of these setups are suitable for you, please use [https://beta.cyber-dojo.org/creator/home](https://beta.cyber-dojo.org/creator/home) as an alternative.

## Description
Regardless of the kata and the course of the dojo, create a starting point that fulfills all of the following characteristics:
- The necessary basic tools are available: Compiler, build tool, Git
- Base project with main function and necessary dependencies for unit tests as well as an initial git branch, e.g. main
- The base project 'mvn clean verify' can be built on the command line and the tests are executed
- IDE with loaded, error-free base project
- Functions in the IDE: build project, test, debug are ready for use

### Java
* Java (>= 21)
* maven (>= 3.8)
* https://github.com/srose/kata-starter-java
* mvn clean verify

### Typescript
* node (>= 18)
* npm (>= 9)
* https://github.com/marcoemrich/kata-starter
* npm install
* npm test