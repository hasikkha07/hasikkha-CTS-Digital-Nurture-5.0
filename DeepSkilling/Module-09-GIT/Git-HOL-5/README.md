# Git HOL-5: Remote Repository

## Aim

To connect a local Git repository with a remote GitHub repository and perform push and pull operations.

## Objectives

- Add a remote repository
- Verify the remote connection
- Push local commits to GitHub
- Pull changes from GitHub
- Display remote repository information

## Commands Used

```bash
git init
git add .
git commit -m "Initial Commit"
git remote add origin <repository-url>
git remote -v
git push -u origin deepskilling
git pull origin deepskilling
git remote show origin
```

## Output

The local repository was successfully connected to GitHub, changes were pushed, and remote details were verified.