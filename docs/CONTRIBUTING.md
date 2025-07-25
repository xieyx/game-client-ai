# Contributing to game-client-ai

Thank you for your interest in contributing to the game-client-ai project! We welcome contributions from the community.

## Table of Contents

- [Getting Started](#getting-started)
- [Reporting Bugs](#reporting-bugs)
- [Suggesting Enhancements](#suggesting-enhancements)
- [Code Contribution](#code-contribution)
- [Style Guidelines](#style-guidelines)
- [Commit Messages](#commit-messages)
- [Pull Requests](#pull-requests)

## Getting Started

1. Fork the repository
2. Clone your fork: `git clone https://github.com/your-username/game-client-ai.git`
3. Create a new branch: `git checkout -b feature/your-feature-name`
4. Make your changes
5. Commit your changes: `git commit -m 'Add some feature'`
6. Push to the branch: `git push origin feature/your-feature-name`
7. Create a pull request

## Reporting Bugs

Before reporting a bug, please check the existing issues to see if it has already been reported.

When reporting a bug, please include:

- A clear and descriptive title
- A detailed description of the issue
- Steps to reproduce the bug
- Expected behavior
- Actual behavior
- Any relevant screenshots or logs

## Suggesting Enhancements

Enhancement suggestions are tracked as GitHub issues. When suggesting an enhancement, please include:

- A clear and descriptive title
- A detailed explanation of the proposed enhancement
- The motivation for the enhancement
- Any additional context or information

## Code Contribution

### Development Workflow

1. Ensure you have Go 1.19 or higher installed
2. Follow the project's coding standards
3. Write tests for your code
4. Ensure all tests pass before submitting a pull request

### Testing

Run all tests with:

```bash
go test ./...
```

### Code Quality

Before submitting your code, please run:

```bash
go fmt ./...
go vet ./...
```

## Style Guidelines

This project follows the [Go Code Review Comments](https://github.com/golang/go/wiki/CodeReviewComments) guidelines.

## Commit Messages

Follow these guidelines for commit messages:

- Use the present tense ("Add feature" not "Added feature")
- Use the imperative mood ("Move cursor to..." not "Moves cursor to...")
- Limit the first line to 72 characters or less
- Reference issues and pull requests liberally after the first line

## Pull Requests

1. Fill in the required template
2. Include screenshots and animated GIFs in your pull request whenever possible
3. Follow the [style guidelines](#style-guidelines)
4. Include thoughtfully-worded, well-structured tests
5. Document new code based on existing documentation
6. End all files with a newline

Thank you for contributing!
