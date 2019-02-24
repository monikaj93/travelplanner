function dayOption(){

    //creating header row with days and dates
    let hdr = document.getElementById("calendar-header");
    hdr.innerHTML = "";
    let hdrRow = document.createElement("tr");
    let day = 0;
    let date = 1;
    let hCell = document.createElement("th");
    let hCellText = document.createTextNode(days[day] + " " + date);
    hCell.appendChild(hCellText);
    hdrRow.appendChild(hCell);
    hdr.appendChild(hdrRow);

    //creating body of calendar - dates
    let tbl = document.getElementById("calendar-body"); // body of the calendar

    // clearing all previous cells
    tbl.innerHTML = "";

    let row = document.createElement("tr");
    let cell = document.createElement("td");
    let cellText = document.createTextNode("");
    cell.appendChild(cellText);
    row.appendChild(cell);
    tbl.appendChild(row);
}

function monthOption(){
  currentYear = parseInt(selectYear.value);
  currentMonth = parseInt(selectMonth.value);
  showCalendar(currentMonth, currentYear);
}
