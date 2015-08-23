ACC_INC_DIR := ../survivalism-tools
ACC := ../survivalism-tools/acc.exe
ZIP := ../survivalism-tools/zip.exe
OBJ_DIR := ACS/*
RM := rm
OUTPUT_PK3 := doomz.pk3
all: $(patsubst %.acs, acs/%.o, $(wildcard *.acs)) pk3


#foo: $(OBJ_FILES)
#	acc.exe -o $@ $^
	
acs/%.o: %.acs Makefile
	$(ACC) -i $(ACC_INC_DIR) $< $@ 

pk3:
	$(ZIP) -v -r -u $(OUTPUT_PK3) *  -x *.bat 
	echo "Created $(OUTPUT_PK3)"
    
clean:
	$(RM) -rf $(OBJ_DIR)