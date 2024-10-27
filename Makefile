projects := \
	"1-counter" \
	"2-temperature-converter" \
	"3-flight-booker"

.PHONY: $(projects)

all: $(projects)
	@echo "Done"

$(projects):
	@echo "Compiling $@"
	@cd "./$@/"; gren format --yes; gren make ./src/Main.gren --output=../docs/$@.html