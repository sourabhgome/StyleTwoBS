<div id="deleteModuleDivision" style="display:none">
 <br>
  <div class="row">
   <div class="col">
    <h3 style="font-size:40px" class="display-1 text-secondary">Student delete Modal</h3>
   </div>
  </div>
  
  <br>

 <form id="deleteModuleForm" action="/styletwoBS/DeleteStudentRequest.jsp" method='post'> 
  <div class="row">
   <div class="col-md-2">
    <label style="font-size:20px" class="display-4">Roll Number: </label>
   </div>
   <div class="col-md-5">
    <input id="deleteModuleRollNumberInput" name="rollNumber" class="form-control" type="hidden">
    <label id="deleteModuleRollNumber" name="roll_number" style="font-size:20px" class="display-4"></label>
   </div>
  </div>
 
  <br>

  <div class="row">
   <div class="col-md-2">
    <label style="font-size:20px" class="display-4">Name: </label>
   </div>
   <div class="col-md-5">
    <label id="deleteModuleName" name="name" style="font-size:20px" class="display-4"></label>
   </div>
  </div>

  <br>

  <div class="row">
   <div class="col-md-2">
    <label id="deleteModuleAddsress" name="address"  style="font-size:20px" class="display-4">Address: </label>
   </div>
   <div class="col-md-5">
    <label id="deleteModuleAddress" name="address"  style="font-size:20px" class="display-4"></label>
   </div>
  </div>

  <br>

  <div class="row">
   <div class="col-md-2">
    <label style="font-size:20px" class="display-4">Gender: </label>
   </div>
   <div class="col-md-5">
    <label id="deleteModuleGender" name="gender" style="font-size:20px" class="display-4">Gender: </label>
   </div>
  </div>

  <br>

  <div class="row">
   <div class="col-md-2">
    <label style="font-size:20px" class="display-4">Date of birth: </label>
   </div>
   <div class="col-md-5">
    <label id="deleteModuleDateOfBirth" name="date" style="font-size:20px" class="display-4"></label>
   </div>
  </div>

  <br>

  <div class="row">
   <div class="col-md-2">
    <label style="font-size:20px" class="display-4">Indian: </label>
   </div>
   <div class="col-md-5">
    <label id="deleteModuleIsIndian" name="indian" style="font-size:20px" class="display-4"></label>
   </div>
  </div>

  <br>


  <div class="row">
   <div class="col-md-2">
    <label style="font-size:20px" class="display-4">City: </label>
   </div>
   <div class="col-md-5">
    <label id="deleteModuleCity" name="city" style="font-size:20px" class="display-4">City: </label>
   </div>
  </div>

  <br>
  <br>

  <div class="row">
   <div style="text-align:center" class="col-md-4">
    <button id="deleteModuleDeleteButton" type="sumbit" class="btn btn-outline-dark btn-lg">Delete</button>
   </div>
   <div class="col-md-4">
    <button id="deleteModuleCancelButton" onclick="cancelButtonClicked()" type="button" class="btn btn-outline-dark btn-lg">Cancel</button>
   </div>
  </div>

 </form> 

  <br><br><br>
</div>