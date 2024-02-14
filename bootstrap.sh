read -p "This will override existing files" -n 1;
echo "";

if [[ $REPLY =~ ^[Yy]$ ]]; then
  git pull origin main;

  rsync --exclude ".git/" \
    --exclude ".DS_Store" \
    --exclude "bootstrap.sh" \
    -avh --no-perms . ~;

  source ~/.zshrc;
fi;
