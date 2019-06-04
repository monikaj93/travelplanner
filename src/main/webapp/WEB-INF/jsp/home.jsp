<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="/resources/static/css/home.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="D:\travelplanner-home\src\main\webapp\resources\static\css\home.css">

    <title>Traveler</title>
  </head>
  <body>
    <!-- <nav> -->
        <%@include file="_navbar.jsp"%>
    <!-- </nav> -->

    <div class="section">
            <div class="board">
              <!-- <button type="button" class="waves-effect waves-light btn light-green darken-3">Add new travel</button> -->
              <button type="button" data-toggle="modal" data-target="#exampleModal">Add travel</button>
              <div class="upcoming">
                <h3>Upcoming travels</h3>
                <ul class="board-list">
                  <li><a href="#">Portugalia</a></li>
                  <li><a href="#">Portugalia</a></li>
                </ul>
              </div>
              <div class="past">
                <h3>Past travels</h3>
                <ul class="board-list">
                  <li><a href="#">Portugalia</a></li>
                  <li><a href="#">Portugalia</a></li>
                </ul>
              </div>
            </div>
         </div>

    <!-- Add travel modal -->
         <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
           <div class="modal-dialog modal-dialog-scrollable modal-dialog-centered" role="document">
             <div class="modal-content">
               <div class="modal-header">
                 <h5 class="modal-title" id="exampleModalLabel">Add travel</h5>
               </div>
               <div class="modal-body">
                 <form>
                  <div class="form-group">
                    <label for="Input1">Destination</label>
                    <input type="text" class="form-control" id="Input1">
                  </div>
                  <div class="form-group">
                    <label for="Input2">Start date</label>
                    <input type="date" class="form-control" id="Input2">
                  </div>
                  <div class="form-group">
                    <label for="Input3">End date</label>
                    <input type="date" class="form-control" id="Input3">
                  </div>
                  <div class="form-group">
                    <label for="Textarea1">Notes</label>
                    <textarea class="form-control" id="Textarea1" rows="3"></textarea>
                  </div>
                </form>
               </div>
               <div class="modal-footer">
                 <button type="button" class="cancel-button"data-dismiss="modal">Cancel</button>
                 <button type="submit">Add</button>
               </div>
             </div>
           </div>
           </div>

           <!-- Compiled and minified JavaScript -->
               <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script> -->
               <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
               <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
               <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

  </body>
</html>
