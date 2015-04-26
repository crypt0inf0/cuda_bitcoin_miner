OBJECTS= gpu_miner
CC=nvcc

all: $(OBJECTS)

gpu_miner: main.cu utils.cu
	$(CC) -O1 -lrt -lm -arch=sm_20 -o $@ $^