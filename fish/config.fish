fish_add_path -g $HOME/.local/bin

# Pi (node bundled under ~/.local/share/pi-node)
for d in $HOME/.local/share/pi-node/node-*/bin
    fish_add_path -g $d
end

# Let Node trust system CAs (NCTU self-signed CA chain)
if test -f $HOME/.nctu-cs-ca.crt
    set -gx NODE_USE_SYSTEM_CA 1
    set -gx NODE_EXTRA_CA_CERTS $HOME/.nctu-cs-ca.crt
end

if status is-interactive
    command -q zoxide; and zoxide init fish | source

    if command -q eza
        abbr -a ls eza --icons
        abbr -a ll eza -l --icons --git
        abbr -a la eza -la --icons --git
        abbr -a lt eza --tree --level=2 --icons
    end
end

# Machine-specific, untracked overrides
test -f $__fish_config_dir/local.fish; and source $__fish_config_dir/local.fish
