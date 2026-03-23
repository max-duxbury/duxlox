# Compiler and flags
jc = javac
srcs = $(wildcard *.java)

# Default target - compile all files
build:
	$(jc) $(srcs)

# Run the REPL 
run:
	java Lox

# Run a script file
run-file:
	java Lox $(FILE)

# Remove compiled class files
clean:
	rm -f *.class


.PHONY:
	build
	run
	run-file
	clean

