NAME=2_tajne_cislo
CC=ghc
FLAGS=-o

all: clean build

install: brew install ghc cabal-install

build:
	$(CC) $(FLAGS) $(NAME) 2_tajne_cislo.hs

run:
	./$(NAME)

clean:
	rm -f 2_tajne_cislo