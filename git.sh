# Run `git pull origin dev` command over all subdirs
find . -type d -mindepth 1 -maxdepth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} pull origin dev \;
