let today = new Date();
let currentMonth = today.getMonth();
let currentYear = today.getFullYear();
let selectYear = document.getElementById("year");
let selectMonth = document.getElementById("month");

let months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
let days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
let hours = ["00:00", "01:00", "02:00", "03:00","04:00","05:00","06:00","07:00","08:00"]
// ,"09:00","10:00","11:00","12:00","13:00","14:00","15:00","16:00","17:00","18:00","19:00","20:00","21:00","22:00","23:00"];
//for(let i=0; i<23; i++) {
  //  hours.push(i + ":" + "00");
//}

let monthAndYear = document.getElementById("monthAndYear");
showCalendar(currentMonth, currentYear);


function next() {
    currentYear = (currentMonth === 11) ? currentYear + 1 : currentYear;
    currentMonth = (currentMonth + 1) % 12;
    showCalendar(currentMonth, currentYear);
}

function previous() {
    currentYear = (currentMonth === 0) ? currentYear - 1 : currentYear;
    currentMonth = (currentMonth === 0) ? 11 : currentMonth - 1;
    showCalendar(currentMonth, currentYear);
}

function jump() {
    currentYear = parseInt(selectYear.value);
    currentMonth = parseInt(selectMonth.value);
    showCalendar(currentMonth, currentYear);
}

function showCalendar(month, year) {

    let firstDay = (new Date(year, month)).getDay();
    let daysInMonth = 32 - new Date(year, month, 32).getDate();

    //get previous month number of days
    let daysInMonthPrev;
    if (month>0){
      daysInMonthPrev = 32 - new Date(year, month-1, 32).getDate();
    }
    else {
      daysInMonthPrev = 32 - new Date(year, 11, 32).getDate();
    }

    //creating header row
    let hdr = document.getElementById("calendar-header");
    hdr.innerHTML = "";
    hdr.classList.remove("scroll-header");
    let row = document.createElement("tr");
    let day = 0;
    for (i = 0; i < days.length; i++){
      let cell = document.createElement("th");
      let cellText = document.createTextNode(days[day]);
      cell.appendChild(cellText);
      row.appendChild(cell);
      day++;
    }
    hdr.appendChild(row);


    let tbl = document.getElementById("calendar-body"); // body of the calendar
    tbl.classList.remove("scroll-body");
    // clearing all previous cells
    tbl.innerHTML = "";

    // filing data about month and in the page via DOM.
    monthAndYear.innerHTML = months[month] + " " + year;
    selectYear.value = year;
    selectMonth.value = month;

    // creating all cells
    let datePrevMonth = daysInMonthPrev - firstDay + 2;
    let dateNextMonth = 1;
    let date = 1;
    for (let i = 0; i < 6; i++) {
        if (date < daysInMonth) {
        // creates a table row
            let row = document.createElement("tr");


        //creating individual cells, filing them up with data.
        for (let j = 0; j < 7; j++) {
            if (i === 0 && j < firstDay-1) {
                let cell = document.createElement("td");
                let cellText = document.createTextNode(datePrevMonth);
                cell.appendChild(cellText);
                row.appendChild(cell);
                datePrevMonth++;
            }
            else if (date > daysInMonth && j<7) {
              let cell = document.createElement("td");
              let cellText;
              if (dateNextMonth == 1){
                nextMonth = (month === 11) ? 0 : month+1;
                cellText = document.createTextNode(months[nextMonth] + " " + dateNextMonth);
              }
              else {
                cellText = document.createTextNode(dateNextMonth);
              }
              cell.appendChild(cellText);
              row.appendChild(cell);
              dateNextMonth++;
            }
            else if (date > daysInMonth) {
              break;
            }

            else {
                let cell = document.createElement("td");
                let cellText;
                if (date == 1){
                  cellText = document.createTextNode(months[month] + " " + date);
                }
                else {
                  cellText = document.createTextNode(date);
                }
                if (date === today.getDate() && year === today.getFullYear() && month === today.getMonth()) {
                    cell.classList.add("bg-info");
                } // color today's date
                cell.appendChild(cellText);
                row.appendChild(cell);
                date++;
            }


        }

        tbl.appendChild(row); // appending each row into calendar body.
        }
    }

}
