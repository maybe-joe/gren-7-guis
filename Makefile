projects := \
	"1_counter"

.PHONY: $(projects)

all: $(projects)
	@echo "Done"

$(projects):
	@echo "Compiling $@"
	@cd "./$@/"; gren make ./src/Main.gren --output=../apps/$@.html