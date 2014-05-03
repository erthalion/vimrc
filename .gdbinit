define parray3d
  set var $i = 0
  while $i < $arg1

    set var $j = 0
    while $j < $arg2

      set var $k = 0
      while $k < $arg3
        printf "%f ", $arg0[$i][$j][$k]
        set var $k = $k+1
      end
      printf "\n"

      set var $j = $j+1
    end
    printf "\n"

    set var $i = $i+1
  end
  printf "\n"

end

define parray2d
  set var $i = 0
  while $i < $arg1

    set var $j = 0
    while $j < $arg2
      printf "%f ", $arg0[$i][$j]
      set var $j = $j+1
    end
    printf "\n"

    set var $i = $i+1
  end
  printf "\n"

end


define parray1d
  set var $i = 0
  while $i < $arg1
    printf "%f ", $arg0[$i]
    set var $i = $i+1
  end
  printf "\n"

end
