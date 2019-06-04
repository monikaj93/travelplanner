<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/resources/static/css/home.css">
    <link rel="stylesheet" href="/resources/static/css/planner.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Traveler</title>
  </head>
  <body>

    <%@include file="_navbar.jsp"%>

    <div class="content">
      <div class="sidebar">
        <a href="home.html">Home</a>
        <a href="planner.html">Planner</a>
        <a href="#">Travels</a>
        <a href="profile.html">Profile</a>
      </div>
      <div class="travel-info">
        Norway
        Date: 15.06.2019 - 25.06.2018
      </div>

      <div class="planner">
        <div class="wrap">
          <div class="header">
            <div class="chevrons">
              <button type="button" name="button" class="calendar_button" id="previous" onclick="previous()"><</button>
              <button type="button" name="button" class="calendar_button" id="next" onclick="next()">></button>
            </div>
            <div class="date">
              <h3 class="card-header" id="monthAndYear"><span></span><strong></strong></h3>
            </div>
            <div class="range">
              <div class="to_the_right">
              <button type="button" name="button" class="calendar_button" onclick="dayOption()">Day</button>
              <button type="button" name="button" class="calendar_button" onclick="weekOption()">Week</button>
              <button type="button" name="button" class="calendar_button" onclick="monthOption()">Month</button>
            </div>
          </div>
</div>

<div class="container-table">


<div class="calendar-wrap">

<table class="calendar_table" id="calendar">

  <thead id="calendar-header">

  </thead>

  <tbody id="calendar-body">

  </tbody>
</table>
</div>
</div>



<br/>
<form class="form-inline">
  <label class="lead mr-2 ml-2" for="month">Jump To: </label>
  <select class="form-control col-sm-4" name="month" id="month" onchange="jump()">
      <option value=0>Jan</option>
      <option value=1>Feb</option>
      <option value=2>Mar</option>
      <option value=3>Apr</option>
      <option value=4>May</option>
      <option value=5>Jun</option>
      <option value=6>Jul</option>
      <option value=7>Aug</option>
      <option value=8>Sep</option>
      <option value=9>Oct</option>
      <option value=10>Nov</option>
      <option value=11>Dec</option>
  </select>


  <label for="year"></label><select class="form-control col-sm-4" name="year" id="year" onchange="jump()">
  <option value=1990>1990</option>
  <option value=1991>1991</option>
  <option value=1992>1992</option>
  <option value=1993>1993</option>
  <option value=1994>1994</option>
  <option value=1995>1995</option>
  <option value=1996>1996</option>
  <option value=1997>1997</option>
  <option value=1998>1998</option>
  <option value=1999>1999</option>
  <option value=2000>2000</option>
  <option value=2001>2001</option>
  <option value=2002>2002</option>
  <option value=2003>2003</option>
  <option value=2004>2004</option>
  <option value=2005>2005</option>
  <option value=2006>2006</option>
  <option value=2007>2007</option>
  <option value=2008>2008</option>
  <option value=2009>2009</option>
  <option value=2010>2010</option>
  <option value=2011>2011</option>
  <option value=2012>2012</option>
  <option value=2013>2013</option>
  <option value=2014>2014</option>
  <option value=2015>2015</option>
  <option value=2016>2016</option>
  <option value=2017>2017</option>
  <option value=2018>2018</option>
  <option value=2019>2019</option>
  <option value=2020>2020</option>
  <option value=2021>2021</option>
  <option value=2022>2022</option>
  <option value=2023>2023</option>
  <option value=2024>2024</option>
  <option value=2025>2025</option>
  <option value=2026>2026</option>
  <option value=2027>2027</option>
  <option value=2028>2028</option>
  <option value=2029>2029</option>
  <option value=2030>2030</option>
</select></form>

<!--<button name="jump" onclick="jump()">Go</button>-->
<script src="<c:url value="/resources/static/js/calendar.js" />"></script>
<script src="<c:url value="/resources/static/js/calendar_week.js" />"></script>
<script src="<c:url value="/resources/static/js/calendar_day.js" />"></script>


           </div>
        </div>

        </div>

      </div>
    </div>
  </body>
</html>
