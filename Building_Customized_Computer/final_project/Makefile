CC=riscv64-unknown-elf-gcc
#SPIKE=../build/riscv-isa-sim/spike
#PK=../build/riscv-pk/pk
SPIKE=spike
PK=/home/vagrant/riscv/riscv64-unknown-elf/bin/pk
EMULATOR=rocket-chip/emulator/emulator-freechips.rocketchip.system-freechips.rocketchip.system.DefaultConfig

.PHONY: all
all: victim victim.s


victim: victim.c
	$(CC) -march=rv64imafd $< -o $@

victim.s: victim.c
	$(CC) -march=rv64imafd $< -c -S -o $@

run: victim
	$(SPIKE) -l --log=victim.log $(PK) victim

run2: victim
	$(SPIKE) -l --log=victim.log $(PK) victim 1 2


ex: victim
	python3 ex.py victim $(SPIKE) $(PK)

ex2: victim
	python3 ex.py victim $(SPIKE) $(PK) 1 2

victim-patched: victim-patched.s
	$(CC) -march=rv64imafd victim-patched.s -o victim-patched

run-victim-patched: victim-patched
	$(EMULATOR) -V $(PK) victim-patched 1 2

ex-victim-patched: victim-patched
	python3 ex.py $< $(EMULATOR) $(PK)

run-patched2: victim-patched
	$(SPIKE) -l --log=victim.log $(PK) $< 1 2

ex-patched2: victim-patched
	python3 ex.py $< $(SPIKE) $(PK) 1 2

run-e1: e1
	$(EMULATOR) -V $(PK) e1 2> e1.log

e1: e1.c
	$(CC) -march=rv64imafd e1.c -o e1

run-e1-spike: e1
	spike -l --log=e1.log pk e1	


min: min.s
	riscv64-unknown-elf-gcc -march=rv64g -Wl,--build-id=none -nostartfiles -nostdlib -static  -Wl,--defsym=MEM_START=0x80000000,-T,min.lds min.s -o min
	
min.d: min
	riscv64-unknown-elf-objdump -d min > a.d

patched: patched.s
	riscv64-unknown-elf-gcc -march=rv64g -Wl,--build-id=none -nostartfiles -nostdlib -static  -Wl,--defsym=MEM_START=0x80000000,-T,min.lds patched.s -o patched
	
patched.d: patched
	riscv64-unknown-elf-objdump -d patched > patched.d

run-min: min
	$(EMULATOR) -V -m 5000 min 2> min.txt

run-patched: patched
	$(EMULATOR) -V -m 5000 patched 2> patched.txt

clean:
	rm -f victim victim.s victim-patched

emulator: $(EMULATOR)

$(EMULATOR): 
	make -C rocket-chip/emulator

clean-emulator:
	make -C rocket-chip/emulator clean 
