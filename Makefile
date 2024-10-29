projects := \
	"Counter" \
	"TemperatureConverter" \
	"FlightBooker"

.PHONY: $(projects)

all: $(projects)
	@echo "Done"

$(projects):
	@echo "Compiling $@"
	@cd "./$@/"; gren format --yes; gren make ./src/$@.gren --output=../docs/$@.js