use "hw1.sml";

(* is_older tests *)
val is_older__test_1__earlier_date_should_return_true = is_older((2017, 6, 1), (2017, 6, 2)) = true;
val is_older__test_2__later_date_should_return_false = is_older((2017, 6, 2), (2016, 6, 1)) = false;
(* same date should return false *)
val is_older__test_3__same_date_should_return_false = is_older((2017, 6, 1), (2017, 6, 1)) = false;
val is_older__test_4__same_year_earlier_month_should_return_true = is_older((2017, 5, 1), (2017, 6, 1)) = true;
val is_older__test_5__same_year_later_month_should_return_false = is_older((2017, 7, 1), (2017, 6, 1)) = false;
val is_older__test_6__earlier_year_should_return_true = is_older((2016, 7, 1), (2017, 6, 1)) = true;
val is_older__test_6__later_year_should_return_false = is_older((2018, 7, 1), (2017, 6, 1)) = false;
val is_1_less_than_1 = 1 < 1;

(* number_in_month tests *)
val number_in_month__test_1__jan_has_31_days = number_in_month(1) = 31;
