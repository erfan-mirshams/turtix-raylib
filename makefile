##
# turtix
#
# @file
# @version 0.1
CC = gcc
CFLAGS = -c -Wall -Wextra -I./include -lraylib -lm
LFLAGS = -Wall -Wextra -lraylib -lm

SRC_DIR = src
BUILD_DIR = build
BIN_DIR = bin

TARGET = turtix

SRC_FILES = $(wildcard $(SRC_DIR)/*.c)
OBJ_FILES = $(addprefix $(BUILD_DIR)/, $(notdir $(SRC_FILES:.c=.o)))

all: $(BIN_DIR)/$(TARGET)

$(BIN_DIR)/$(TARGET): $(OBJ_FILES) | $(BIN_DIR)
	$(CC) $(LFLAGS) $^ -o $@

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c | $(BUILD_DIR)
	$(CC) $(CFLAGS) -o $@ $<

$(BIN_DIR):
	mkdir -p $@

$(BUILD_DIR):
	mkdir -p $@

clean:
	rm -rf $(BUILD_DIR) $(BIN_DIR)

compile_commands.json: clean
	bear -- make all

.PHONY: compile_commands
compile_commands: compile_commands.json
