function autoload-fish-config -e fish_prompt
    if status is-interactive
       set new_sha1sum (cat $_fish_myconf_dir/**/*.fish | sha1sum | awk '{print$1}')
       if test -z $_myconf_sha1sum
           echo 'config update'
           fisher update $_fish_myconf_dir > /dev/null &
           set -U _myconf_sha1sum $new_sha1sum
       else
           if test $_myconf_sha1sum != $new_sha1sum
               echo 'config update'
               fisher update $_fish_myconf_dir > /dev/null &
              set -U _myconf_sha1sum $new_sha1sum
           end
       end
   end
end


function autoload-fish-config_install --on-event autoload-fish-config_install
    set_color -o  bryellow 
    echo 'PLEASE EXEC `set -U _fish_myconf_dir /path/to/your/configuration/files/`'
    echo 'Read Document at https://github.com/straxFromIbr/autoload-fish-config'
    set_color normal
end

 
