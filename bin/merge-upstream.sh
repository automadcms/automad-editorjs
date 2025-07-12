#!/bin/bash

git remote add upstream https://github.com/codex-team/editor.js.git 2>/dev/null
git fetch upstream
git fetch upstream --tags
git merge upstream/next
