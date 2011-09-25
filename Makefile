export PERL5LIB=../pegex-pm/lib

COMPILE_COMMAND = perl -MPegex::Compiler -e \
    'print Pegex::Compiler->compile_raw(shift)->to_

all: tt2.pgx.yaml tt2.pgx.json

tt2.pgx.yaml: tt2.pgx Makefile
	$(COMPILE_COMMAND)yaml' $< > $@

tt2.pgx.json: tt2.pgx Makefile
	$(COMPILE_COMMAND)json' $< > $@

clean:
	rm -f tt2.pgx.*
