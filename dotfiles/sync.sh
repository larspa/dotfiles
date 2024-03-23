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
  source_file=~/$file;

  if [ -e $source_file ]; then
    echo "Syncing $file from ~/$file";
    rsync -avq --no-perms ~/$file .;
  fi;
done;

echo "Syncing directories";
echo "===================";
for directory in $directories_to_sync; do
  source_directory=~/$directory;

  if [ $directory == "nvim" ]; then
    source_directory=~/.config/$directory;
  fi;

  if [ -e $source_directory ]; then
    echo "Syncing $directory from $source_directory";
    rsync -avqr --no-perms --exclude "." --exclude ".git/" $source_directory .;
  fi;
done;
