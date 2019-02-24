function weekOption(month, year){


    //creating header row with days and dates
    let hdr = document.getElementById("calendar-header");
    hdr.innerHTML = "";
    hdr.className = "scroll-header";
    let hdrRow = document.createElement("tr");
    let cell = document.createElement("th");
    hdrRow.appendChild(cell);
    let day = 0;
    let date = 1;
    for (i = 0; i < days.length; i++){
      let cell = document.createElement("th");
      let cellText = document.createTextNode(days[day] + " " + date);
      cell.appendChild(cellText);
      hdrRow.appendChild(cell);
      day++;
      date++;
    }
    hdr.appendChild(hdrRow);


    let tbl = document.getElementById("calendar-body"); // body of the calendar
    tbl.innerHTML = "";
    tbl.className = "scroll-body";
    // let bigRow = document.createElement("tr");
    // let bigCellTime = document.createElement("td");
    // let timeCellsWrap = document.createElement('div');
    // timeCellsWrap.className = "time-cells-wrap";
    // let timeTable = document.createElement('table');
    // let hour = 0;
    // for (let i = 0; i < hours.length;  i++){
    //     let row = document.createElement("tr");
    //     let cell = document.createElement("td");
    //     let tCellText = document.createTextNode(hours[hour]+" ");
    //     cell.appendChild(tCellText);
    //     row.appendChild(cell);
    //     hour++;
    //     timeTable.appendChild(row);
    // }
    // timeCellsWrap.appendChild(timeTable);
    // bigCellTime.appendChild(timeCellsWrap);
    // bigRow.appendChild(bigCellTime);
    // tbl.appendChild(bigRow);





    let hour = 0;
    for (let i = 0; i < hours.length;  i++){
        let row = document.createElement("tr");

        // 8 columns - 1 with time and 7 days of week
        for (let j = 0; j < 8; j++){
           let cell = document.createElement("td");
           //first colum cell text with time
           if (j==0){
             let tCellText = document.createTextNode(hours[hour]+" ");
             cell.appendChild(tCellText);
            }
         row.appendChild(cell);
        }
        hour++;
        tbl.appendChild(row);
    }



}
