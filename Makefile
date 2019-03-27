ACC_INC_DIR := ../survivalism-tools
ACC := acc
ZIP := 7za
OBJ_DIR := src/acs/*
RM := rm
OUTPUT_PK3 := doomz.pk3
ZANDRO := "../../Torr_Samaho/zandronum/zandronum"
all: $(patsubst src/%.acs, src/acs/%.o, $(wildcard src/*.acs)) pk3


#foo: $(OBJ_FILES)
#	acc.exe -o $@ $^
	
src/acs/%.o: src/%.acs Makefile
	$(ACC) -i $(ACC_INC_DIR) $< $@ 

pk3:
	$(ZIP) a -tzip -r -xr!*.bat -xr!.git -xr!*.backup* -xr!*.bak -xr!doomz.pk3  -xr!*.pro -- $(OUTPUT_PK3) ./src/*
#   -mx 9 saves like 5% archive size but is slower
	echo "Created $(OUTPUT_PK3)"
    
play: pk3
	$(ZANDRO) -iwad doom2.wad -file doomz.pk3 +map doomz2

clean:
	$(RM) -rf $(OBJ_DIR)
	$(RM) $(OUTPUT_PK3)
