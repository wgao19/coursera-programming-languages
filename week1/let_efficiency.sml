fun max (xs : int list) =
  if null xs then 0
  else if null (tl xs) then hd xs
  else
      let val max_tl = max (tl xs)
      in
          if hd xs > max_tl then hd xs
          else max_tl
      end
