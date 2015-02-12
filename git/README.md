# Git Guidelines

## Commit Messages
Inspired by and adapted from [angular.js](https://github.com/angular/angular.js/blob/master/CONTRIBUTING.md#commit)

In general, commit messages should follow this format
```
<type>: <subject>
<additional info>
```

### Type
Must be one of the following:
- **feat**: A new feature
- **fix**: A bug fix
- **docs**: Documentation only changes
- **style**: Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc)
- **refactor**: A code change that neither fixes a bug or adds a feature
- **perf**: A code change that improves performance
- **test**: Adding missing tests
- **chore**: Changes to the build process or auxiliary tools and libraries such as documentation generation

Try to limit each commit to one type of change. If absolutely necessary, separate types by commas.

### Subject
- use the imperative, present tense: "change" not "changed" nor "changes"
- don't capitalize first letter
- no dot (.) at the end
 
### Additional Info
Use this space for any additional explanations or information

### Example
```
docs: fix typo in README.md
```
