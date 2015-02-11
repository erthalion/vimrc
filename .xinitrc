hsetroot
xsetroot -cursor_name left_ptr
setxkbmap -layout us,ru -option "grp:alt_shift_toggle,grp_led:scroll" -variant ",winkeys"
exec ck-launch-session dbus-launch --sh-syntax --exit-with-session xmonad
