#!/bin/bash

# do `sh init.sh "My Post Title"` to create a new post
title="$1"

(bundle exec jekyll post "$title" && cd _posts && explorer.exe . && cd .. & bundle exec jekyll serve --port 4001 && xdg-open http://127.0.0.1:4001)