function fish_right_prompt -d "Write out the right prompt"
    if set -q VIRTUAL_ENV
        set_color yellow
        printf "[%s]"  (basename "$VIRTUAL_ENV")
        set_color normal
    end

    set_color FF3D3D
    printf "%s" (vcprompt --format '[%s:%b]')
    set_color normal
end
