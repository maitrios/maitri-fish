if status is-interactive

    if command -v mise &>/dev/null
        mise activate fish | source
    end

    if command -v zoxide &>/dev/null
        zoxide init fish | source
    end

    # Configure fzf.fish keybindings - disable process search
    if command -v fzf &>/dev/null
        fzf_configure_bindings --processes=
    end
end
