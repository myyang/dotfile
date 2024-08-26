#!/usr/bin/env bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
echo -e "Start linking file under: \033[93m$DIR\033[0m"

echo -e "\033[96mDot file\033[0m"
for i in $(ls -a "$DIR" | grep '^\.[^.]' | grep -v '^\.\(vim\|git\)$'); do
    if [ -e "$HOME/$i" ]
    then
        echo -e "\033[91mFound \033[93m$i\033[0m, skip linking, please merge manually."
    else
        echo -e "\033[92mNope \033[93m$i\033[0m, linking..."
        ln -s "$DIR/$i" "$HOME/$i"
    fi
done

echo  "alias env_cmd=\"$DIR/run_with_env_file.sh\"" >> "$HOME/.byhostrc"

echo -e "\033[96mDot folder\033[0m"
# vim 
vimf=$DIR'/.vim/'
vimhome=$HOME'/.vim/'
for f in "$vimf"/*; do

    i=$(basename "$f")

    [ ! -d "$vimhome/$i" ]  && echo -e "\033[92mCreate folder: \033[93m$i\033[0m" && mkdir -p "$vimhome/$i" || echo -e "Folder exists: \033[93m$i\033[0m"

    for f2 in "$vimf/$i"/*; do
        j=$(basename "$f2")
        if [ -e "$vimhome/$i/$j" ]
        then
            echo -e "\033[91mFound \033[93m$i/$j\033[0m, skip linking, please merge manually."
        else
            echo -e "\033[92mNope \033[93m$i/$j\033[0m, linking..."
            ln -s "$vimf/$i/$j" "$vimhome/$i/$j"
        fi
    done

done

echo -e "\033[92mDone!\033[0m"
