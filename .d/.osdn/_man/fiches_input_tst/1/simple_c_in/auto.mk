.PHONY: clear 

source_dirs := . lib

search_wildcards := $(addsuffix /*.c,$(source_dirs)) 

main.bexe: $(notdir $(patsubst %.c,%.o,$(wildcard $(search_wildcards))))
	gcc $^ -o $@ 

VPATH := $(source_dirs)
	
%.o: %.c
	gcc -c -MD $(addprefix -I ,$(source_dirs)) $<

include $(wildcard *.d) 

clear:
	rm *.o
	rm main.bexe