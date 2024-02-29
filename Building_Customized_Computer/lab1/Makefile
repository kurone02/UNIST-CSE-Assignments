# Student name: Nguyen Minh Duc
# Student ID: 20202026


# This is the recipe to build spike
# First, it creates a folder to store all the compiled files
# Then, we go into that folder
# Next, we run the configure file in riscv-isa-sim folder
# Finally, invoke the make recipe of spike
spike: 
	{\
		mkdir -p build/riscv-isa-sim; \
		cd build/riscv-isa-sim; \
		../../riscv-isa-sim/configure --prefix=`pwd`/../../riscv; \
		make -j`nproc`; \
	}

# This is the recipe to build pk
# First, it exports all the necessary environment variables
# Then, we create a folder to store all the compiled files and go into that
# Next, we run the configure file in riscv-pk folder
# Finally, invoke the make recipe of pk
pk:
	{\
		export RISCV="$$(pwd)/riscv"; \
		export PATH="$$RISCV/bin:$$PATH"; \
		mkdir -p build/riscv-pk; \
		cd build/riscv-pk; \
		../../riscv-pk/configure --host=riscv64-unknown-elf --prefix=`pwd`/../../riscv; \
		CFLAGS="-mabi=lp64d -march=rv64imafdc" make -j`nproc`; \
	}

# This is the recipe to build and run min
# First, it exports all the necessary environment variables
# Then, it uses riscv64-unknown-elf-gcc compiler to compile the file with necessary flags
# Finally, we run the program and save the log to exec.log
min: sw/min.lds sw/min.s
	{\
		export RISCV="$$(pwd)/riscv"; \
		export PATH="$$RISCV/bin:$$PATH"; \
		riscv64-unknown-elf-gcc -Wl,--build-id=none -nostartfiles -nostdlib -static -Wl,--defsym=MEM_START=0x80000000,-T,$^; \
		./build/riscv-isa-sim/spike -l --log=exec.log a.out; \
	}

# This is the recipe to build and run hello
# First, it exports all the necessary environment variables
# Then, it uses riscv64-unknown-elf-gcc compiler to compile the file
# Finally, we run the program
hello: sw/hello.c
	{\
		export RISCV="$$(pwd)/riscv"; \
		export PATH="$$RISCV/bin:$$PATH"; \
		riscv64-unknown-elf-gcc $< -o sw/hello;\
		./build/riscv-isa-sim/spike build/riscv-pk/pk sw/hello;\
	}
	
