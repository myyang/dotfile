#!/usr/bin/env bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
echo -e "Start linking file under: \033[93m$DIR\033[0m"

# Link a single file from source to destination
# Args: source_file target_file
link_file() {
    local source_file="$1"
    local target_file="$2"
    local filename
    filename=$(basename "$source_file")

    if [ ! -e "$source_file" ]; then
        echo -e "\033[91mSource file not found: \033[93m$source_file\033[0m"
        return 1
    fi

    if [ -e "$target_file" ]; then
        if [ -L "$target_file" ]; then
            local link_target
            link_target=$(readlink "$target_file")
            if [ "$link_target" = "$source_file" ]; then
                echo -e "\033[94mAlready linked: \033[93m$filename\033[0m"
                return 0
            else
                echo -e "\033[91mFound existing link \033[93m$filename\033[0m pointing to different target, skip linking, please merge manually."
                return 1
            fi
        else
            echo -e "\033[91mFound existing file \033[93m$filename\033[0m, skip linking, please merge manually."
            return 1
        fi
    else
        echo -e "\033[92mLinking \033[93m$filename\033[0m..."
        ln -s "$source_file" "$target_file"
        return $?
    fi
}

# Link files in a directory recursively
# Args: source_dir target_dir
link_directory() {
    local source_dir="$1"
    local target_dir="$2"

    if [ ! -d "$source_dir" ]; then
        echo -e "\033[91mSource directory not found: \033[93m$source_dir\033[0m"
        return 1
    fi

    for f in "$source_dir"/*; do
        if [ ! -e "$f" ]; then
            continue
        fi

        local i
        i=$(basename "$f")
        local target_subdir="$target_dir/$i"

        if [ -d "$f" ]; then
            if [ ! -d "$target_subdir" ]; then
                echo -e "\033[92mCreate folder: \033[93m$i\033[0m"
                mkdir -p "$target_subdir"
            else
                echo -e "Folder exists: \033[93m$i\033[0m"
            fi

            for f2 in "$f"/*; do
                if [ ! -e "$f2" ]; then
                    continue
                fi

                local j
                j=$(basename "$f2")
                link_file "$f2" "$target_subdir/$j"
            done
        else
            link_file "$f" "$target_subdir"
        fi
    done
}

echo -e "\033[96mDot file\033[0m"
for i in $(ls -a "$DIR" | grep '^\.[^.]' | grep -v '^\.\(vim\|git\)$'); do
    link_file "$DIR/$i" "$HOME/$i"
done

# Link AGENTS.md
link_file "$DIR/AGENTS.md" "$HOME/AGENTS.md"

echo  "alias env_cmd=\"$DIR/run_with_env_file.sh\"" >> "$HOME/.byhostrc"

echo -e "\033[96mDot folder\033[0m"
# vim
link_directory "$DIR/.vim" "$HOME/.vim"

echo -e "\033[92mDone!\033[0m"
