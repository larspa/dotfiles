# Sync files from home directory to this repository
# Purpose is to keep the repository up to date with the home directory

rsync --exclude ".git/" \
  --exclude ".DS_Store" \
  --exclude "bootstrap.sh" \
  -avh --no-perms . ~;

files_to_sync=$(find . -maxdepth 1 -type f -name "*" -exec basename {} \;)
directories_to_sync=$(find . -maxdepth 1 -type d -name "*" -not -path "." -exec basename {} \;)

echo "Syncing files";
echo "===================";
for file in $files_to_sync; do
  if [ -e ~/$file ]; then
    echo "Syncing $file...";
    rsync -avq --no-perms ~/$file .;
  fi;
done;

echo "Syncing directories";
echo "===================";
for directory in $directories_to_sync; do
  if [ -e ~/$directory ]; then
    echo "Syncing $directory...";
    rsync -avqr --no-perms --exclude "." --exclude ".git/" ~/$directory .;
  fi;
done;
