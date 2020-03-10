all:
	g++ -Wall -g CometPlacer.cpp $(shell pkg-config --cflags --libs sdl2) -std=c++11 -o CometPlacer.out

clean:
	rm CometPlacer.out

run:	
	./CometPlacer.out kgraph=benchmarks/kgraph.txt output=results/kgraph.out wirepenalty=100 timelimit=60 width=633 height=633
run2:	
	./CometPlacer.out kgraph=benchmarks/kgraph2.txt output=results/kgraph2.out wirepenalty=100 timelimit=60 width=633 height=633

run4:
	./CometPlacer.out kgraph=benchmarks/kgraph4.txt output=results/kgraph4.out wirepenalty=100 timelimit=60 width=633 height=633
	
run18:
	./CometPlacer.out kgraph=benchmarks/kgraph18.txt output=results/kgraph18.out wirepenalty=100 timelimit=60 width=633 height=633

run_single:	
	./CometPlacer.out kgraph=benchmarks/single.txt output=results/single.out wirepenalty=100 timelimit=60 width=633 height=633
