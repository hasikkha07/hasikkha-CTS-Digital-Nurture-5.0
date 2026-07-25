# Git HOL-4: Merging Branches

## Aim

To understand how Git merges changes from one branch into another.

## Objectives

- Create a feature branch
- Modify project files
- Commit changes
- Merge the feature branch into the main branch
- Verify merge history

## Commands Used

```bash
git init
git add .
git commit -m "Initial Commit"
git branch feature
git checkout feature
git add .
git commit -m "Updated index.html in feature branch"
git checkout main
git merge feature
git log --oneline --graph
```

## Output

The feature branch was successfully merged into the main branch and the commit history was verified.