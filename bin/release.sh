#!/bin/sh

if [[ $(git status -s) ]]; then
  echo "Working directory is not clean!"
  git status -s
  echo
fi

current=$(npm pkg get version)

echo "Current version is $current"
read -p "Please enter a new tag: " version

while true; do
  read -p "Create $version version? (y/n) " continue
  case $continue in
  [Yy]*)
    break
    ;;
  [Nn]*)
    exit 0
    ;;
  *)
    echo "Please only enter \"y\" or \"n\"."
    ;;
  esac
done
echo

npm version $version
git push origin && git push origin --tags
