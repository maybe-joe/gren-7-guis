projects := \
	"1-counter" \
	"2-temperature-converter"

.PHONY: $(projects)

all: $(projects)
	@echo "Done"

$(projects):
	@echo "Compiling $@"
	@cd "./$@/"; gren format --yes; gren make ./src/Main.gren --output=../docs/$@.html