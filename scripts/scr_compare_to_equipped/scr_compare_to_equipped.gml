/// scr_compare_to_equipped(compare_stat, current_stat, negative_or_positive);
var compare_stat = argument[0];
var current_stat = argument[1];
var positive = argument[2];

var difference = (compare_stat - current_stat) / current_stat * positive;
result[0] = "";
result[1] = c_white;

if (difference > 0) {
    var num_plusses = clamp(round(difference/.2),1,4);
    repeat(num_plusses) result[0] = result[0] + "+";
    result[1] = c_green;
} else if (difference < 0) {
    var num_minuses = clamp(round(-difference/.2),1,4);
    repeat(num_minuses) result[0] = result[0] + "-";
    result[1] = c_red;
}

return result;
