# Game AI Client Makefile

# Variables
BINARY=game-client-ai
MAIN_DIR=cmd
VERSION?=0.1.0
BUILD_TIME?=$(shell date -u +%Y%m%d.%H%M%S)
GIT_COMMIT?=$(shell git rev-parse HEAD)
GIT_DIRTY?=$(shell test -n "`git status --porcelain`" && echo "+CHANGES" || true)

# Go parameters
GOCMD=go
GOBUILD=$(GOCMD) build
GOCLEAN=$(GOCMD) clean
GOTEST=$(GOCMD) test
GOGET=$(GOCMD) get
GOMOD=$(GOCMD) mod
GOFMT=$(GOCMD) fmt
GOVET=$(GOCMD) vet

# Build flags
LDFLAGS=-ldflags "-X main.Version=$(VERSION) -X main.BuildTime=$(BUILD_TIME) -X main.GitCommit=$(GIT_COMMIT)$(GIT_DIRTY)"

.PHONY: all build clean test fmt vet lint install deps help

# Default target
all: build

# Build the binary
build:
	$(GOBUILD) $(LDFLAGS) -o $(BINARY) $(MAIN_DIR)/main.go

# Install dependencies
deps:
	$(GOMOD) download

# Clean build artifacts
clean:
	$(GOCLEAN)
	rm -f $(BINARY)

# Run tests
test:
	$(GOTEST) -v ./...

# Format source code
fmt:
	$(GOFMT) ./...

# Vet source code
vet:
	$(GOVET) ./...

# Run linter
lint:
	golangci-lint run

# Install the binary
install:
	$(GOBUILD) $(LDFLAGS) -o $(GOPATH)/bin/$(BINARY) $(MAIN_DIR)/main.go

# Run the application
run:
	$(GOBUILD) $(LDFLAGS) -o $(BINARY) $(MAIN_DIR)/main.go
	./$(BINARY)

# Show help
help:
	@echo 'Usage: make <target>'
	@echo ''
	@echo 'Targets:'
	@echo '  all        Build the binary (default)'
	@echo '  build      Build the binary'
	@echo '  clean      Clean build artifacts'
	@echo '  test       Run tests'
	@echo '  fmt        Format source code'
	@echo '  vet        Vet source code'
	@echo '  lint       Run linter'
	@echo '  install    Install the binary'
	@echo '  run        Run the application'
	@echo '  deps       Install dependencies'
	@echo '  help       Show this help'
