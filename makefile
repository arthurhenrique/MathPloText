CPPUNIT_PATH=./

LIB_DIR=$(CPPUNIT_PATH)/lib
CPPFLAGS=-fpermissive -Wall
all: Main

Main: MathPloText.o
	g++ -o MathPloText Main.cpp MathPloText.o

MathPloText.o: MathPloText.cpp MathPloText.h
	g++ -c MathPloText.cpp $(CPPFLAGS)

clean:
	rm -f *.o MathPloText *~