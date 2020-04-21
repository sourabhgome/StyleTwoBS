<div id="editModuleDivision" style="display:none">
 <br>
  <div class="row">
   <div class="col">
    <h3 style="font-size:40px" class="display-1 text-secondary">Edit Student Modal</h3>
   </div>
  </div>
  
  <br>

 <form id="editModuleForm" action="/styletwoBS/EditStudentRequest.jsp" method="post"> 
  <div class="row">
   <div class="col-md-2">
    <label style="font-size:20px" class="display-4">Roll Number: </label>
   </div>
   <div class="col-md-5">
    <input id="editModuleRollNumber" name="rollNumber" class="form-control" type="number" placeholder="Roll Number" readonly>
   </div>
  </div>
 
  <br>

  <div class="row">
   <div class="col-md-2">
    <label style="font-size:20px" class="display-4">Name: </label>
   </div>
   <div class="col-md-5">
    <input id="editModuleName" name="name" class="form-control" type="text" placeholder="Enter your name">
   </div>
  </div>

  <br>

  <div class="row">
   <div class="col-md-2">
    <label style="font-size:20px" class="display-4">Address: </label>
   </div>
   <div class="col-md-5">
    <textarea id="editModuleAddress" name="address" class="form-control" rows="3" type="text" placeholder="Enter your address"></textarea>
   </div>
  </div>

  <br>

  <div class="row">
   <div class="col-md-2">
    <label style="font-size:20px" class="display-4">Gender: </label>
   </div>
   <div class="col-md-5">
    <div class="form-check form-check-inline">
     <input class="form-check-input" type="radio" id="editModuleMale" name="gender" value="M">
     <label class="form-check-label" for="inlineRadio1">Male</label>
    </div>
    <div class="form-check form-check-inline">
     <input class="form-check-input" type="radio" id="editModuleFemale" name="gender" value="F">
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
    <input id="editModuleDateOfBirth" name="DOB" class="form-control" type="date">
   </div>
  </div>

  <br>

  <div class="row">
   <div class="col-md-2">
    <label style="font-size:20px" class="display-4">Indian: </label>
   </div>
   <div class="col-md-5">
    <div class="form-check">
     <input class="form-check-input" type="checkbox" id="editModuleIsIndian" value="true" name="indian">
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
     <select class="form-control" id="editModuleCity" name="cityCode">
     <option value="-1">Select city</option>
     </select>
     </div>
   </div>
  </div>

  <br>
  <br>

  <div class="row">
   <div style="text-align:center" class="col-md-4">
    <button id="editModuleSaveButton" type="submit" class="btn btn-outline-dark btn-lg">Save</button>
   </div>
   <div class="col-md-4">
    <button id="editModuleCancelButton" onclick="cancelButtonClicked()" type="button" class="btn btn-outline-dark btn-lg">Cancel</button>
   </div>
  </div>

 </form> 

  <br><br><br>
</div>