function _reload_myconf -e fish_prompt
    if status is-interactive
       set new_sha1sum ( cat $_fish_myconf_dir/.git/refs/heads/main )
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




 
