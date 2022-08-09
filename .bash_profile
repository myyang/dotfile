if [ -f "$HOME/.bashrc" ]; then
    # shellcheck source=/dev/null
    source "$HOME/.bashrc"
fi

if [ -f "$HOME/.devrc" ]; then
    # shellcheck source=/dev/null
    source "$HOME/.devrc"
fi

if [ -f "$HOME/.byhostrc" ]; then
    # shellcheck source=/dev/null
    source "$HOME/.byhostrc"
fi
