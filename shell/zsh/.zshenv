# ophanim ZDOTDIR shim. Runs for every zsh spawned inside ophanim
# (shell, tmux panes). Source the user's real config first so their
# environment is unchanged, then ensure $OPHANIM_BIN stays on PATH —
# macOS path_helper (invoked from /etc/zprofile) otherwise wipes it on
# login shells.
[[ -f "$HOME/.zshenv" ]] && source "$HOME/.zshenv"
[[ -n "$OPHANIM_BIN" ]] && export PATH="$OPHANIM_BIN:$PATH"
