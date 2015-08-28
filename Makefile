ACC_INC_DIR := ../survivalism-tools
ACC := ../survivalism-tools/acc.exe
ZIP := ../survivalism-tools/7za.exe
OBJ_DIR := src/ACS/*
RM := rm
OUTPUT_PK3 := doomz.pk3
ZANDRO := "C:\Program Files (x86)\Zandronum\zandronum.exe"
all: $(patsubst src/%.acs, src/acs/%.o, $(wildcard src/*.acs)) pk3


#foo: $(OBJ_FILES)
#	acc.exe -o $@ $^
	
src/acs/%.o: src/%.acs Makefile
	$(ACC) -i $(ACC_INC_DIR) $< $@ 

pk3:
	$(ZIP) a -tzip -r -xr!.bat -xr!.git -xr!doomz.pk3 -- $(OUTPUT_PK3) ./src/*
#   -mx 9 saves like 5% archive size but is slower
	echo "Created $(OUTPUT_PK3)"
    
play: pk3
	$(ZANDRO) -iwad doom2.wad -file doomz.pk3 +map doomz2

clean:
	$(RM) -rf $(OBJ_DIR)