SOURCE 				= FIFO.v 
BENCH_SOURCE 	= FIFO_bench.v
WAVE_SOURCE		=	FIFO.vcd
OUTPUT 				=	output.out 


all: $(SOURCE) $(BENCH_SOURCE)
	iverilog -o $(OUTPUT) $(SOURCE) $(BENCH_SOURCE) 
run: $(OUTPUT)
	./$(OUTPUT)
view:$(WAVE_SOURCE)
	open -a gtkwave $(WAVE_SOURCE)
clean:
	rm -f *.out *.vcd
