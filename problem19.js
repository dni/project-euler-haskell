var months = [];
var month = 0;
var year = 1901;
var count = 0;

while (year != 2001) {

  month++;

  var datestring = month + "-01-" + year + " 12:00";
  var date = new Date(datestring);

  if (date.getDay() == 0) {
    count++;
  }

  if (month == 12) {
    month = 0;
    year++;
  }
}

console.log(count);

