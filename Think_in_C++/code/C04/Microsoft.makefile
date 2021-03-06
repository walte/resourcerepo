# From Thinking in C++, 2nd Edition
# At http://www.BruceEckel.com
# (c) Bruce Eckel 1999
# Copyright notice in Copyright.txt
# Automatically-generated MAKEFILE 
# For examples in directory C04
# using the Microsoft compiler
# Note: does not make files that will 
# not compile with this compiler
# Invoke with: make -f Microsoft.makefile

# Note: this requires the service Pack 3 from
# www.Microsoft.com for successful compilation!
CPP = cl
CPPFLAGS = -GX -GR
OFLAG = -o
.SUFFIXES : .obj .cpp .c
.cpp.obj :
	$(CPP) $(CPPFLAGS) -c $<
.c.obj :
	$(CPP) $(CPPFLAGS) -c $<

all: \
	CLibTest.exe \
	CppLibTest.exe \
	Sizeof.exe \
	StackTest.exe \
	Scoperes.exe 

test: all 
	CLibTest.exe  
	CppLibTest.exe  
	Sizeof.exe  
	StackTest.exe NestTest.cpp 
	Scoperes.exe  

bugs: 
	@echo No compiler bugs in this directory!

CLibTest.exe: CLibTest.obj CLib.obj 
	$(CPP) $(OFLAG)CLibTest.exe CLibTest.obj CLib.obj 

CppLibTest.exe: CppLibTest.obj CppLib.obj 
	$(CPP) $(OFLAG)CppLibTest.exe CppLibTest.obj CppLib.obj 

Sizeof.exe: Sizeof.obj 
	$(CPP) $(OFLAG)Sizeof.exe Sizeof.obj 

StackTest.exe: StackTest.obj Nested.obj 
	$(CPP) $(OFLAG)StackTest.exe StackTest.obj Nested.obj 

Scoperes.exe: Scoperes.obj 
	$(CPP) $(OFLAG)Scoperes.exe Scoperes.obj 


CLib.obj: CLib.cpp CLib.h 
CLibTest.obj: CLibTest.cpp CLib.h 
CppLib.obj: CppLib.cpp CppLib.h 
CppLibTest.obj: CppLibTest.cpp CppLib.h ..\require.h 
Sizeof.obj: Sizeof.cpp CLib.h CppLib.h 
Nested.obj: Nested.cpp Stack.h ..\require.h 
StackTest.obj: StackTest.cpp Stack.h ..\require.h 
Scoperes.obj: Scoperes.cpp 

