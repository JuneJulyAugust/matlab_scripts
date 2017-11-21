gcc -m64 gen_opt.c -I/home/rx450h/Downloads/linasm-1.13/include -L/home/rx450h/Downloads/linasm-1.13 -O3 -llinasm -lm -fomit-frame-pointer -DNDEBUG -msse2 -mfpmath=sse -march=native -o gen_opt
gcc gen.c -O3 -lm -o gen
