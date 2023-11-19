/*
DANIEL YOWELL
*/
#include <stdio.h>

// this will run on each thread
// we have four threads (2 blocks)
// this will run four times
// the block and thread indices are provided for us
__global__ void hello(){
  // as the lecture says, blockIdx.x and threadIdx.x are provided for us
  printf("Hello from block: %u, thread: %u\n", blockIdx.x, threadIdx.x);
}

int main(){
  // launch the kernel function
  // 2 blocks, 2 threads
  hello<<<2, 2>>>();
  cudaDeviceSynchronize();
}

