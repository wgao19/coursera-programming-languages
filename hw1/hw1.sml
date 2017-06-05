fun is_older (date1 : int * int * int, date2 : int * int * int) =
  if #1 date1 < #1 date2 then true
  else
      if #1 date1 > #1 date2 then false
      else
          if #2 date1 < #2 date2 then true
          else
              if #2 date2 > #2 date2 then false
              else #3 date1 < #3 date2;

val months_of_31_days = [1,3,5,7,8,10,12];
val months_of_30_days = [4,6,9,11];

fun number_in_month (month: int) =
  if month = 2 then 28
  else if exists(fun is_equal(x) = x = month, months_of_31_days) then 31
  else 30;
