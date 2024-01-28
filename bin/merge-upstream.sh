#!/bin/bash

git remote add upstream https://github.com/codex-team/editor.js.git 2>/dev/null
git fetch --no-tags upstream
git merge upstream/next
