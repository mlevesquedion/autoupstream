# autoupstream

A short script to automatically set the upstream branch when pushing for the first time.

## General warning

If you use an alias named "gp", then it will shadow this script, so you should remove the alias or rename the script.

## Warning for oh-my-zsh git plugin users

If you happen to use oh-my-zsh's git plugin, its "gp" alias will shadow the script.
Be sure to add the line:
`unalias gp  # Shadows script that autosets upstream`
below this line:
`source $ZSH/oh-my-zsh.sh`
