CXX = g++
CXXFLAGS = -g -Wall -Wextra -Wpedantic

.PHONY : all
all : program

program : main.cpp person.o member.o librarian.o book.o
	$(CXX) $(CXXFLAGS) -c -o $@ $^

person.o : person.cpp person.h
	$(CXX) $(CXXFLAGS) -c $<

member.o : member.cpp member.h
	$(CXX) $(CXXFLAGS) -c $<

librarian.o : librarian.cpp librarian.h
	$(CXX) $(CXXFLAGS) -c $<

book.o : book.cpp book.h
	$(CXX) $(CXXFLAGS) -c $<

.PHONY : clean
clean : 
	rm *.o
	#rm *.h.gch
	rm program