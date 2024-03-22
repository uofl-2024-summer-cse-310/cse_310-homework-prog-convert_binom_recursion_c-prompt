bc: binomial_coefficient.c
	gcc -o bc binomial_coefficient.c

clean:
	rm -f bc

test: bc
	@((./bc 5 2; \
	./bc -4 2; \
	./bc 10 5; \
	./bc 0 0; \
	./bc 0 1 ;\
	./bc 1 0 ;\
	./bc 1 1 ;\
	./bc 7 3; \
	./bc 8 4; \
	./bc 9 4; \
	./bc 10 5; \
	./bc 11 5; \
	./bc 12 6; \
	./bc 13 6; \
	./bc 14 7; \
	./bc 15 7; \
	./bc 16 8; \
	./bc 17 8; \
	./bc 18 9; \
	./bc 19 9; \
	./bc 20 10; \
	./bc 21 10; \
	./bc 22 11; \
	./bc 23 11; \
	./bc 24 12; \
	./bc 25 12; \
	./bc 26 13; \
	./bc 27 13; \
	./bc 28 14; \
	./bc 30 15; \
	./bc 21 22; \
	./bc 29 14;) | shasum -a 256)