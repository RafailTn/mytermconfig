if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source
fish_add_path ~/.pixi/bin
pixi completion --shell fish | source
fish_vi_key_bindings
