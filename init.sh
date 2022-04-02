#!/bin/bash
title="$1"

(bundle exec jekyll post "$title" && cd _posts && explorer.exe . && cd .. & bundle exec jekyll serve --port 4001 && xdg-open http://127.0.0.1:4001)