projects := \
	"Counter" \
	"TemperatureConverter" \
	"FlightBooker" \
	"Timer"

.PHONY: $(projects)

all: $(projects)
	@echo "Done"

$(projects):
	@echo "Compiling $@"
	@gren format --yes; gren make ./src/$@.gren --output=./docs/js/$@.js