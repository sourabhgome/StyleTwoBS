<div id="addModuleDivision" style="display:none">
 <br>
  <div class="row">
   <div class="col">
    <h3 style="font-size:40px" class="display-1 text-secondary">Add Student Modal</h3>
   </div>
  </div>
  
  <br>

 <form id="addModuleForm" action="/styletwoBS/AddStudentRequest.jsp" method="post"> 
  <div class="row">
   <div class="col-md-2">
    <label style="font-size:20px" class="display-4">Roll Number: </label>
   </div>
   <div class="col-md-5">
    <input id="addModuleRollNumber" name="rollNumber" class="form-control" type="number" placeholder="Roll Number">
   </div>
  </div>
 
  <br>

  <div class="row">
   <div class="col-md-2">
    <label style="font-size:20px" class="display-4">Name: </label>
   </div>
   <div class="col-md-5">
    <input id="addModuleName" name="name" class="form-control" type="text" placeholder="Enter your name">
   </div>
  </div>

  <br>

  <div class="row">
   <div class="col-md-2">
    <label style="font-size:20px" class="display-4">Address: </label>
   </div>
   <div class="col-md-5">
    <textarea id="addModuleAddress" name="address" class="form-control" rows="3" type="text" placeholder="Enter your address"></textarea>
   </div>
  </div>

  <br>

  <div class="row">
   <div class="col-md-2">
    <label style="font-size:20px" class="display-4">Gender: </label>
   </div>
   <div class="col-md-5">
    <div class="form-check form-check-inline">
     <input class="form-check-input" type="radio" id="addModuleMale" name="gender" value="M">
     <label class="form-check-label" for="inlineRadio1">Male</label>
    </div>
    <div class="form-check form-check-inline">
     <input class="form-check-input" type="radio" id="addModuleFemale" name="gender" value="F">
     <label class="form-check-label" for="inlineRadio2">Female</label> 
    </div>
   </div>
  </div>

  <br>

  <div class="row">
   <div class="col-md-2">
    <label style="font-size:20px" class="display-4">Date of birth: </label>
   </div>
   <div class="col-md-5">
    <input id="addModuleDate" name="DOB" class="form-control" type="date">
   </div>
  </div>

  <br>

  <div class="row">
   <div class="col-md-2">
    <label style="font-size:20px" class="display-4">Indian: </label>
   </div>
   <div class="col-md-5">
    <div class="form-check">
     <input class="form-check-input" type="checkbox" id="addModuleIsIndian" name="indian">
    </div>
   </div>
  </div>

  <br>


  <div class="row">
   <div class="col-md-2">
    <label style="font-size:20px" class="display-4">City: </label>
   </div>
   <div class="col-md-5">
     <div class="form-group">
     <select class="form-control" id="addModuleCity" name="cityCode">
     <option value="-1">Select city</option>
     </select>
     </div>
   </div>
  </div>

  <br>
  <br>

  <div class="row">
   <div style="text-align:center" class="col-md-4">
    <button id="addModuleSaveButton" type="submit" class="btn btn-outline-dark btn-lg">Save</button>
   </div>
   <div class="col-md-4">
    <button id="addModuleCancelButton" onclick="cancelButtonClicked()" type="button" class="btn btn-outline-dark btn-lg">Cancel</button>
   </div>
  </div>

 </form> 

  <br><br><br>
</div>