<jsp:include page='/MasterPageTopSection.jsp'/>
<jsp:useBean id='serviceResponse' scope='request' class='com.thinking.machines.school.beans.ServiceResponse'/>
<jsp:include page='/StudentsJS.jsp'/>
<div id="studentViewDivision">
 <br>
 <div class="row">
  <div class="col-md-4">
   <h3 id="student-heading" style="font-size:40px" class="display-1 text-secondary">Students</h3>
  </div>
  <div class="col-md-6 border-left" style="padding:10px 5px">
   <input id="searchStudent" oninput=searchStudent(this) class="form-control" type="text" placeholder="Search student">
  </div>
  <div class="col-md-2 border-left align-middle" style="padding:10px 30px">
   <img style='cursor:pointer;' onclick="addIconClickedHandler()" src="images/add_icon.png" class="align-self-center"></img>
  </div>
 </div>
 <br>
 <label id="serviceResponseCode" style="display:none"><jsp:getProperty name='serviceResponse' property='code'/></label>
 <label id="serviceResponseSuccess" style="display:none"><jsp:getProperty name='serviceResponse' property='success'/></label>
 <label id="serviceResponseMessage" style="display:none"><jsp:getProperty name='serviceResponse' property='message'/></label>
 <div style="overflow-y:scroll;max-height:300px;">
 <table id="studentViewGrid" class="table table-hover">
  <thead class="thead-dark">
   <tr>
    <th scope="col">S No.</th>
    <th scope="col">Roll No.</th>
    <th scope="col">Name</th>
    <th scope="col">Gender</th>   
    <th scope="col">D.O.B</th>
    <th scope="col">City</th>
    <th scope="col">Edit</th>
    <th scope="col">Delete</th>
    <th scope="col">Details</th>
   </tr>
  </thead>
  <tbody>
  </tbody>
 </table>
 </div>
</div>


<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modalLabel">Student Delete</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Successully
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">Ok</button> 
      </div>
    </div>
  </div>
</div>


<jsp:include page='/AddStudent.jsp'/>
<jsp:include page='/StudentDetails.jsp'/>
<jsp:include page='/DeleteStudent.jsp'/>
<jsp:include page='/EditStudent.jsp'/>
<jsp:include page='/MasterPageBottomSection.jsp'/>