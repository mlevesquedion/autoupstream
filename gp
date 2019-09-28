#!/bin/bash

error_output=$(git push 2>&1)

if [[ "$error_output" =~ fatal ]]; then
  echo "Upstream branch does not exist, setting upstream and pushing." >&2
  command_to_run="$(grep -o "git push --set-upstream.*" <<< "$error_output")"
  if eval "$command_to_run"; then
    echo "Push successful!"
  else
    echo "Push failed!"
  fi;
else
  echo "$error_output"
fi

