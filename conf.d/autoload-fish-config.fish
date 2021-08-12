function autoload-fish-config -e fish_prompt
    if test -z $_fish_myconf_dir
        echo 'PLEASE EXEC `set -U _fish_myconf_dir /path/to/your/configuration/files/`'
        echo 'Read Document at https://github.com/straxFromIbr/autoload-fish-config'
        return 
    end 
    if status is-interactive
       set new_sha1sum (cat $_fish_myconf_dir/**/*.fish | shasum | awk '{print$1}')
       if test -z $_myconf_sha1sum
           echo 'config updated ✨'
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
    echo 'PLEASE EXEC `set -U _fish_myconf_dir /path/to/your/configuration/files/`'
    echo 'Read Document at https://github.com/straxFromIbr/autoload-fish-config'
end

 
