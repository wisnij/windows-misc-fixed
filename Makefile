all: 6x13 7x13

6x13: 6x13.fon 6x13B.fon 6x13O.fon

7x13: 7x13.fon 7x13B.fon 7x13O.fon

clean:
	-rm -v *.fon

%.fon: %.fd
	mkwinfont $< -o $@
	chmod +x $@
