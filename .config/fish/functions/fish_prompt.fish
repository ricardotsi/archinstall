function fish_prompt
    if test -n "$SSH_TTY"
        echo -n (set_color brred)"$USER"(set_color white)'@'(set_color yellow)(prompt_hostname)' '
    end

#    echo -n (set_color blue)(prompt_pwd)' '

    set_color -o
    if fish_is_root_user
        echo -n (set_color red)'# '
    end
    
    echo -n (set_color -b cyan)(set_color "#86007d")" $USER in "(prompt_pwd)"/"(set_color -b normal)(set_color cyan)""\n
    echo -n (set_color "#e50000")'❯'(set_color "#ff8d00")'❯'(set_color "ffee00")'❯'(set_color "#028121")'❯'(set_color "#004cff")'❯'(set_color "#760088")'❯ '
#    set_color normal
end
