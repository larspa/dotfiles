read -p "This will override existing files" -n 1;
echo "";

if [[ $REPLY =~ ^[Yy]$ ]]; then
  git pull origin main;

  rsync --exclude-from=".bootstrapignore" \
    -avh --no-perms . ~;

  source ~/.zshrc;
fi;
