projects := \
	"1-counter"

.PHONY: $(projects)

all: $(projects)
	@echo "Done"

$(projects):
	@echo "Compiling $@"
	@cd "./$@/"; gren format --yes; gren make ./src/Main.gren --output=../gui/$@.html