# Contributing to WildGuard360

Thank you for your interest in contributing to WildGuard360! We welcome contributions from the community and are grateful for your support in making animal protection technology more accessible.

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [Getting Started](#getting-started)
- [Development Setup](#development-setup)
- [How to Contribute](#how-to-contribute)
- [Coding Standards](#coding-standards)
- [Testing Guidelines](#testing-guidelines)
- [Pull Request Process](#pull-request-process)
- [Issue Reporting](#issue-reporting)

## Code of Conduct

We are committed to providing a welcoming and inclusive environment for all contributors. Please read and follow our [Code of Conduct](CODE_OF_CONDUCT.md).

## Getting Started

1. Fork the repository on GitHub
2. Clone your fork locally
3. Set up the development environment
4. Create a new branch for your feature or bugfix
5. Make your changes
6. Test your changes
7. Submit a pull request

## Development Setup

### Prerequisites

- Node.js (v16 or higher)
- Python (v3.8 or higher)
- MongoDB (local or cloud instance)
- Git

### Setup Steps

1. **Clone your fork:**
   ```bash
   git clone https://github.com/YOUR_USERNAME/SC1_WildGuard360.git
   cd SC1_WildGuard360
   ```

2. **Add upstream remote:**
   ```bash
   git remote add upstream https://github.com/Poseidon120104/SC1_WildGuard360.git
   ```

3. **Install dependencies:**
   ```bash
   # Backend
   cd server
   npm install
   
   # Frontend
   cd ../client
   npm install
   
   # Flask ML services
   cd ../server/Flask
   pip install -r requirements.txt
   ```

4. **Environment setup:**
   ```bash
   cd server
   cp .env.sample .env
   # Edit .env with your configuration
   ```

## How to Contribute

### Areas for Contribution

- **Bug Fixes**: Help identify and fix issues
- **New Features**: Add new animal species recognition
- **Documentation**: Improve guides and API documentation
- **UI/UX**: Enhance user interface and experience
- **Testing**: Increase test coverage
- **Performance**: Optimize algorithms and database queries

### Feature Development

1. Check existing issues and discussions
2. Create an issue for new features (if not exists)
3. Get approval from maintainers
4. Create a feature branch
5. Implement the feature
6. Add tests
7. Update documentation
8. Submit pull request

## Coding Standards

### JavaScript/React

- Use ES6+ features
- Follow React best practices
- Use meaningful variable and function names
- Add JSDoc comments for functions
- Use Prettier for code formatting
- Follow ESLint rules

### Python

- Follow PEP 8 style guide
- Use type hints where applicable
- Add docstrings for functions and classes
- Use meaningful variable names
- Keep functions small and focused

### General Guidelines

- Write self-documenting code
- Add comments for complex logic
- Use consistent naming conventions
- Keep commits atomic and focused
- Write clear commit messages

## Testing Guidelines

### Frontend Testing

```bash
cd client
npm test
```

### Backend Testing

```bash
cd server
npm test
```

### Test Coverage

- Aim for at least 80% test coverage
- Test both positive and negative cases
- Include integration tests for API endpoints
- Test ML model accuracy with sample data

## Pull Request Process

1. **Sync with upstream:**
   ```bash
   git fetch upstream
   git checkout main
   git merge upstream/main
   ```

2. **Create feature branch:**
   ```bash
   git checkout -b feature/your-feature-name
   ```

3. **Make changes and commit:**
   ```bash
   git add .
   git commit -m "Add feature: your feature description"
   ```

4. **Push to your fork:**
   ```bash
   git push origin feature/your-feature-name
   ```

5. **Create pull request:**
   - Go to GitHub and create a PR
   - Fill out the PR template
   - Link related issues
   - Request review from maintainers

### PR Requirements

- [ ] Code follows project standards
- [ ] Tests pass locally
- [ ] New features include tests
- [ ] Documentation updated
- [ ] No merge conflicts
- [ ] PR description is clear and complete

## Issue Reporting

When reporting bugs or requesting features:

### Bug Reports

Include:
- Clear description of the issue
- Steps to reproduce
- Expected vs actual behavior
- Environment details (OS, browser, versions)
- Screenshots or logs (if applicable)

### Feature Requests

Include:
- Clear description of the feature
- Use case and benefits
- Proposed implementation (if any)
- Related issues or discussions

## Development Workflow

### Branch Naming

- `feature/feature-name` - New features
- `bugfix/issue-description` - Bug fixes
- `hotfix/critical-issue` - Critical fixes
- `docs/documentation-update` - Documentation changes

### Commit Messages

Follow conventional commits format:
```
type(scope): description

[optional body]

[optional footer]
```

Examples:
- `feat(auth): add OAuth login support`
- `fix(api): resolve user profile update issue`
- `docs(readme): update installation instructions`

## Getting Help

- Join our [Discord server](https://discord.gg/wildguard360) for real-time chat
- Check [GitHub Discussions](https://github.com/Poseidon120104/SC1_WildGuard360/discussions) for Q&A
- Review existing [issues](https://github.com/Poseidon120104/SC1_WildGuard360/issues) and PRs
- Contact maintainers: wildguard360@example.com

## Recognition

Contributors will be recognized in:
- README.md contributors section
- Release notes
- GitHub contributors page
- Annual contributor appreciation posts

Thank you for contributing to WildGuard360 and helping us protect animals worldwide! 🐾