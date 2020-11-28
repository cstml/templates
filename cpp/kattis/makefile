COMP:=g++
FLAGs:=-g
FILE:=main
SRC:=$(FILE).cpp
OBJ:=$(FILE).o

.PHONY: execute watch watch-output clean

execute:	$(FILE)
	./$<
	@echo "Job Done!!"

$(FILE): $(SRC)
	$(COMP) $(FLAG) -o $@ $(SRC)

watch: 
	@echo "Starting Watch"
	@ls *.cpp | entr make execute

watch-output: 
	@watch bat out.out

clean:
	@rm $(FILE)
	@rm in.in out.out
	@echo "Clean Folder!!"

