ERLC = erlc
ERL = erl

all: compile

compile:
	$(ERLC) hello.erl

run: compile
	$(ERL) -noshell -s hello world -s init stop

clean:
	rm -f *.beam