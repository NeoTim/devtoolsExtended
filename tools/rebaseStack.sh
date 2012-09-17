#!/bin/sh
# Copyright (c) 2010 Google Inc johnjbarton@google.com
# Google BSD license http://code.google.com/google_bsd_license.html

# Propagate changes in syncToWebKit up through patch stack chain
# Use after updateFromWebKit.sh

set -e -x
git checkout syncToWebKit
git checkout atopwi
git checkout 93166_shortestItemSelected
git checkout 96040_ExtensionItemSelector
git checkout 96148_focusExtensionPanel

git rebase syncToWebKit 93166_shortestItemSelected
git rebase 93166_shortestItemSelected 96040_ExtensionItemSelector
git rebase 96040_ExtensionItemSelector 96148_focusExtensionPanel
git rebase 96148_focusExtensionPanel atopwi 