#------------------------------------------------------------------------------#
# This makefile was generated by 'cbp2make' tool rev.147                       #
#------------------------------------------------------------------------------#


WORKDIR = `pwd`

CC = gcc
CXX = g++
AR = ar
LD = g++
WINDRES = windres

INC = -I/usr/include/opencv4
CFLAGS = -Wall -fexceptions -fopenmp
RESINC = 
LIBDIR = 
ARCH = `arch`
LIB = /usr/lib/$(ARCH)-linux-gnu/libopencv_core.so /usr/lib/$(ARCH)-linux-gnu/libopencv_video.so /usr/lib/$(ARCH)-linux-gnu/libopencv_videoio.so
LDFLAGS = -lpthread  -lgomp

INC_DEBUG = $(INC)
CFLAGS_DEBUG = $(CFLAGS) -g -fopenmp
RESINC_DEBUG = $(RESINC)
RCFLAGS_DEBUG = $(RCFLAGS)
LIBDIR_DEBUG = $(LIBDIR)
LIB_DEBUG = $(LIB)
LDFLAGS_DEBUG = $(LDFLAGS) -fopenmp
OBJDIR_DEBUG = obj/Debug
DEP_DEBUG = 
OUT_DEBUG = bin/Debug/biosim4

INC_RELEASE = $(INC)
CFLAGS_RELEASE = $(CFLAGS) -O3
RESINC_RELEASE = $(RESINC)
RCFLAGS_RELEASE = $(RCFLAGS)
LIBDIR_RELEASE = $(LIBDIR)
LIB_RELEASE = $(LIB)
LDFLAGS_RELEASE = $(LDFLAGS) -O3 -s
OBJDIR_RELEASE = obj/Release
DEP_RELEASE = 
OUT_RELEASE = bin/Release/biosim4

OBJ_DEBUG = $(OBJDIR_DEBUG)/src/signals.o $(OBJDIR_DEBUG)/src/main.o $(OBJDIR_DEBUG)/src/params.o $(OBJDIR_DEBUG)/src/peeps.o $(OBJDIR_DEBUG)/src/random.o $(OBJDIR_DEBUG)/src/simulator.o $(OBJDIR_DEBUG)/src/spawnNewGeneration.o $(OBJDIR_DEBUG)/src/survival-criteria.o $(OBJDIR_DEBUG)/src/unitTestBasicTypes.o $(OBJDIR_DEBUG)/src/unitTestConnectNeuralNetWiringFromGenome.o $(OBJDIR_DEBUG)/src/unitTestGridVisitNeighborhood.o $(OBJDIR_DEBUG)/src/genome-compare.o $(OBJDIR_DEBUG)/src/analysis.o $(OBJDIR_DEBUG)/src/basicTypes.o $(OBJDIR_DEBUG)/src/createBarrier.o $(OBJDIR_DEBUG)/src/endOfGeneration.o $(OBJDIR_DEBUG)/src/endOfSimStep.o $(OBJDIR_DEBUG)/src/executeActions.o $(OBJDIR_DEBUG)/src/feedForward.o $(OBJDIR_DEBUG)/src/genome.o $(OBJDIR_DEBUG)/src/getSensor.o $(OBJDIR_DEBUG)/src/grid.o $(OBJDIR_DEBUG)/src/imageWriter.o $(OBJDIR_DEBUG)/src/indiv.o

OBJ_RELEASE = $(OBJDIR_RELEASE)/src/signals.o $(OBJDIR_RELEASE)/src/main.o $(OBJDIR_RELEASE)/src/params.o $(OBJDIR_RELEASE)/src/peeps.o $(OBJDIR_RELEASE)/src/random.o $(OBJDIR_RELEASE)/src/simulator.o $(OBJDIR_RELEASE)/src/spawnNewGeneration.o $(OBJDIR_RELEASE)/src/survival-criteria.o $(OBJDIR_RELEASE)/src/unitTestBasicTypes.o $(OBJDIR_RELEASE)/src/unitTestConnectNeuralNetWiringFromGenome.o $(OBJDIR_RELEASE)/src/unitTestGridVisitNeighborhood.o $(OBJDIR_RELEASE)/src/genome-compare.o $(OBJDIR_RELEASE)/src/analysis.o $(OBJDIR_RELEASE)/src/basicTypes.o $(OBJDIR_RELEASE)/src/createBarrier.o $(OBJDIR_RELEASE)/src/endOfGeneration.o $(OBJDIR_RELEASE)/src/endOfSimStep.o $(OBJDIR_RELEASE)/src/executeActions.o $(OBJDIR_RELEASE)/src/feedForward.o $(OBJDIR_RELEASE)/src/genome.o $(OBJDIR_RELEASE)/src/getSensor.o $(OBJDIR_RELEASE)/src/grid.o $(OBJDIR_RELEASE)/src/imageWriter.o $(OBJDIR_RELEASE)/src/indiv.o

all: debug release

clean: clean_debug clean_release

before_debug: 
	test -d bin/Debug || mkdir -p bin/Debug
	test -d $(OBJDIR_DEBUG)/src || mkdir -p $(OBJDIR_DEBUG)/src

after_debug: 

debug: before_debug out_debug after_debug

out_debug: before_debug $(OBJ_DEBUG) $(DEP_DEBUG)
	$(LD) $(LIBDIR_DEBUG) -o $(OUT_DEBUG) $(OBJ_DEBUG)  $(LDFLAGS_DEBUG) $(LIB_DEBUG)

$(OBJDIR_DEBUG)/src/signals.o: src/signals.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/signals.cpp -o $(OBJDIR_DEBUG)/src/signals.o

$(OBJDIR_DEBUG)/src/main.o: src/main.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/main.cpp -o $(OBJDIR_DEBUG)/src/main.o

$(OBJDIR_DEBUG)/src/params.o: src/params.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/params.cpp -o $(OBJDIR_DEBUG)/src/params.o

$(OBJDIR_DEBUG)/src/peeps.o: src/peeps.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/peeps.cpp -o $(OBJDIR_DEBUG)/src/peeps.o

$(OBJDIR_DEBUG)/src/random.o: src/random.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/random.cpp -o $(OBJDIR_DEBUG)/src/random.o

$(OBJDIR_DEBUG)/src/simulator.o: src/simulator.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/simulator.cpp -o $(OBJDIR_DEBUG)/src/simulator.o

$(OBJDIR_DEBUG)/src/spawnNewGeneration.o: src/spawnNewGeneration.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/spawnNewGeneration.cpp -o $(OBJDIR_DEBUG)/src/spawnNewGeneration.o

$(OBJDIR_DEBUG)/src/survival-criteria.o: src/survival-criteria.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/survival-criteria.cpp -o $(OBJDIR_DEBUG)/src/survival-criteria.o

$(OBJDIR_DEBUG)/src/unitTestBasicTypes.o: src/unitTestBasicTypes.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/unitTestBasicTypes.cpp -o $(OBJDIR_DEBUG)/src/unitTestBasicTypes.o

$(OBJDIR_DEBUG)/src/unitTestConnectNeuralNetWiringFromGenome.o: src/unitTestConnectNeuralNetWiringFromGenome.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/unitTestConnectNeuralNetWiringFromGenome.cpp -o $(OBJDIR_DEBUG)/src/unitTestConnectNeuralNetWiringFromGenome.o

$(OBJDIR_DEBUG)/src/unitTestGridVisitNeighborhood.o: src/unitTestGridVisitNeighborhood.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/unitTestGridVisitNeighborhood.cpp -o $(OBJDIR_DEBUG)/src/unitTestGridVisitNeighborhood.o

$(OBJDIR_DEBUG)/src/genome-compare.o: src/genome-compare.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/genome-compare.cpp -o $(OBJDIR_DEBUG)/src/genome-compare.o

$(OBJDIR_DEBUG)/src/analysis.o: src/analysis.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/analysis.cpp -o $(OBJDIR_DEBUG)/src/analysis.o

$(OBJDIR_DEBUG)/src/basicTypes.o: src/basicTypes.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/basicTypes.cpp -o $(OBJDIR_DEBUG)/src/basicTypes.o

$(OBJDIR_DEBUG)/src/createBarrier.o: src/createBarrier.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/createBarrier.cpp -o $(OBJDIR_DEBUG)/src/createBarrier.o

$(OBJDIR_DEBUG)/src/endOfGeneration.o: src/endOfGeneration.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/endOfGeneration.cpp -o $(OBJDIR_DEBUG)/src/endOfGeneration.o

$(OBJDIR_DEBUG)/src/endOfSimStep.o: src/endOfSimStep.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/endOfSimStep.cpp -o $(OBJDIR_DEBUG)/src/endOfSimStep.o

$(OBJDIR_DEBUG)/src/executeActions.o: src/executeActions.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/executeActions.cpp -o $(OBJDIR_DEBUG)/src/executeActions.o

$(OBJDIR_DEBUG)/src/feedForward.o: src/feedForward.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/feedForward.cpp -o $(OBJDIR_DEBUG)/src/feedForward.o

$(OBJDIR_DEBUG)/src/genome.o: src/genome.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/genome.cpp -o $(OBJDIR_DEBUG)/src/genome.o

$(OBJDIR_DEBUG)/src/getSensor.o: src/getSensor.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/getSensor.cpp -o $(OBJDIR_DEBUG)/src/getSensor.o

$(OBJDIR_DEBUG)/src/grid.o: src/grid.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/grid.cpp -o $(OBJDIR_DEBUG)/src/grid.o

$(OBJDIR_DEBUG)/src/imageWriter.o: src/imageWriter.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/imageWriter.cpp -o $(OBJDIR_DEBUG)/src/imageWriter.o

$(OBJDIR_DEBUG)/src/indiv.o: src/indiv.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/indiv.cpp -o $(OBJDIR_DEBUG)/src/indiv.o

clean_debug: 
	rm -f $(OBJ_DEBUG) $(OUT_DEBUG)
	rm -rf bin/Debug
	rm -rf $(OBJDIR_DEBUG)/src

before_release: 
	test -d bin/Release || mkdir -p bin/Release
	test -d $(OBJDIR_RELEASE)/src || mkdir -p $(OBJDIR_RELEASE)/src

after_release: 

release: before_release out_release after_release

out_release: before_release $(OBJ_RELEASE) $(DEP_RELEASE)
	$(LD) $(LIBDIR_RELEASE) -o $(OUT_RELEASE) $(OBJ_RELEASE)  $(LDFLAGS_RELEASE) $(LIB_RELEASE)

$(OBJDIR_RELEASE)/src/signals.o: src/signals.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/signals.cpp -o $(OBJDIR_RELEASE)/src/signals.o

$(OBJDIR_RELEASE)/src/main.o: src/main.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/main.cpp -o $(OBJDIR_RELEASE)/src/main.o

$(OBJDIR_RELEASE)/src/params.o: src/params.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/params.cpp -o $(OBJDIR_RELEASE)/src/params.o

$(OBJDIR_RELEASE)/src/peeps.o: src/peeps.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/peeps.cpp -o $(OBJDIR_RELEASE)/src/peeps.o

$(OBJDIR_RELEASE)/src/random.o: src/random.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/random.cpp -o $(OBJDIR_RELEASE)/src/random.o

$(OBJDIR_RELEASE)/src/simulator.o: src/simulator.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/simulator.cpp -o $(OBJDIR_RELEASE)/src/simulator.o

$(OBJDIR_RELEASE)/src/spawnNewGeneration.o: src/spawnNewGeneration.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/spawnNewGeneration.cpp -o $(OBJDIR_RELEASE)/src/spawnNewGeneration.o

$(OBJDIR_RELEASE)/src/survival-criteria.o: src/survival-criteria.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/survival-criteria.cpp -o $(OBJDIR_RELEASE)/src/survival-criteria.o

$(OBJDIR_RELEASE)/src/unitTestBasicTypes.o: src/unitTestBasicTypes.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/unitTestBasicTypes.cpp -o $(OBJDIR_RELEASE)/src/unitTestBasicTypes.o

$(OBJDIR_RELEASE)/src/unitTestConnectNeuralNetWiringFromGenome.o: src/unitTestConnectNeuralNetWiringFromGenome.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/unitTestConnectNeuralNetWiringFromGenome.cpp -o $(OBJDIR_RELEASE)/src/unitTestConnectNeuralNetWiringFromGenome.o

$(OBJDIR_RELEASE)/src/unitTestGridVisitNeighborhood.o: src/unitTestGridVisitNeighborhood.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/unitTestGridVisitNeighborhood.cpp -o $(OBJDIR_RELEASE)/src/unitTestGridVisitNeighborhood.o

$(OBJDIR_RELEASE)/src/genome-compare.o: src/genome-compare.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/genome-compare.cpp -o $(OBJDIR_RELEASE)/src/genome-compare.o

$(OBJDIR_RELEASE)/src/analysis.o: src/analysis.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/analysis.cpp -o $(OBJDIR_RELEASE)/src/analysis.o

$(OBJDIR_RELEASE)/src/basicTypes.o: src/basicTypes.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/basicTypes.cpp -o $(OBJDIR_RELEASE)/src/basicTypes.o

$(OBJDIR_RELEASE)/src/createBarrier.o: src/createBarrier.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/createBarrier.cpp -o $(OBJDIR_RELEASE)/src/createBarrier.o

$(OBJDIR_RELEASE)/src/endOfGeneration.o: src/endOfGeneration.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/endOfGeneration.cpp -o $(OBJDIR_RELEASE)/src/endOfGeneration.o

$(OBJDIR_RELEASE)/src/endOfSimStep.o: src/endOfSimStep.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/endOfSimStep.cpp -o $(OBJDIR_RELEASE)/src/endOfSimStep.o

$(OBJDIR_RELEASE)/src/executeActions.o: src/executeActions.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/executeActions.cpp -o $(OBJDIR_RELEASE)/src/executeActions.o

$(OBJDIR_RELEASE)/src/feedForward.o: src/feedForward.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/feedForward.cpp -o $(OBJDIR_RELEASE)/src/feedForward.o

$(OBJDIR_RELEASE)/src/genome.o: src/genome.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/genome.cpp -o $(OBJDIR_RELEASE)/src/genome.o

$(OBJDIR_RELEASE)/src/getSensor.o: src/getSensor.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/getSensor.cpp -o $(OBJDIR_RELEASE)/src/getSensor.o

$(OBJDIR_RELEASE)/src/grid.o: src/grid.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/grid.cpp -o $(OBJDIR_RELEASE)/src/grid.o

$(OBJDIR_RELEASE)/src/imageWriter.o: src/imageWriter.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/imageWriter.cpp -o $(OBJDIR_RELEASE)/src/imageWriter.o

$(OBJDIR_RELEASE)/src/indiv.o: src/indiv.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/indiv.cpp -o $(OBJDIR_RELEASE)/src/indiv.o

clean_release: 
	rm -f $(OBJ_RELEASE) $(OUT_RELEASE)
	rm -rf bin/Release
	rm -rf $(OBJDIR_RELEASE)/src

.PHONY: before_debug after_debug clean_debug before_release after_release clean_release

