all: 
	ocamlbuild lexer.byte && ./lexer.byte tst/return_2.c

clean:
	ocamlbuild -clean
