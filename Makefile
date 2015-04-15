PROGS =  webGet webServer

all:    ${PROGS}

webGet: main.o utils.o core.o
	gcc -std=gnu99 -o webGet main.o utils.o core.o

webServer: webServer.o
	gcc -Wall -Wextra -pedantic -o webServer webServer.o

clean:
	rm -rf *.o
	rm -rf createDataFiles
	rm -rf webGet
	rm -rf webServer

main.o: main.c common.h globals.h
	gcc -std=gnu99 -c main.c

utils.o: utils.c common.h globals.h
	gcc -std=gnu99 -c utils.c

core.o: core.c common.h globals.h
	gcc -std=gnu99 -c core.c

