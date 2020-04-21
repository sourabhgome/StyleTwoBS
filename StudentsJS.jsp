<%@taglib uri='/WEB-INF/tlds/mytags.tld' prefix='tm'%>
<script>

 
function City()
{
 this.code=0;
 this.name='';
}


function Student()
{
 this.roll_number=0;
 this.name='';
 this.gender='';
 this.dateOfBirth='';
 this.address='';
 this.indian=false;
 this.city=null;
}


function ViewModel()
{
 this.students=[];
 this.cities=[];
 this.selectedRow=null;
 this.selectedRowIndex=-1;
}


var viewModel=new ViewModel();


function initView()
{
 var c;
 <tm:TableIterator table='city' name='city' orderBy='name'>
  c=new City();
  c.code=${city.code};
  c.name='${city.name}';
  viewModel.cities[${index}]=c;
 </tm:TableIterator>

 var s;
 <tm:TableIterator table='student' name='student' orderBy='name'>
  s=new Student();
  s.roll_number=${student.rollNumber};
  s.name='${student.name}';
  s.gender='${student.gender}';
  s.dateOfBirth='${student.DOB}';
  s.address='${student.address}';
  s.indian=${student.indian};
  c=new City();
  c.code=${student.city.code};
  c.name='${student.city.name}';
  s.city=c;
  viewModel.students[${index}]=s;
 </tm:TableIterator>

 
 var i,tr,td,textNode,img;
 var table=document.getElementById('studentViewGrid');
 i=0;
 while(i<viewModel.students.length)
 {
  tr=document.createElement('tr');
  td=document.createElement('td');
  textNode=document.createTextNode(i+1+'.');
  td.append(textNode);
  tr.append(td);
  td=document.createElement('td');
  textNode=document.createTextNode(viewModel.students[i].roll_number);
  td.append(textNode);
  tr.append(td);
  td=document.createElement('td');
  textNode=document.createTextNode(viewModel.students[i].name);
  td.append(textNode);
  tr.append(td);
  td=document.createElement('td');
  img=document.createElement('img');
  if(viewModel.students[i].gender=='M') img.src='/styletwo/images/male.png';
  else img.src='/styletwo/images/female.png';
  td.append(img);
  tr.append(td);
  td=document.createElement('td');
  textNode=document.createTextNode(viewModel.students[i].dateOfBirth);
  td.append(textNode);
  tr.append(td);
  td=document.createElement('td');
  textNode=document.createTextNode(viewModel.students[i].city.name)
  td.append(textNode);
  tr.append(td);
  td=document.createElement('td');
  img=document.createElement('img');
  img.src='/styletwo/images/edit_icon.png';
  td.append(img);
  td.onclick=createEditIconClickedHandler(i,tr);
  tr.append(td);
  td=document.createElement('td');
  img=document.createElement('img');
  img.src='/styletwo/images/delete_icon.png';
  td.append(img);
  td.onclick=createDeleteIconClickedHandler(i,tr);
  tr.append(td);
  td=document.createElement('td');
  img=document.createElement('img');
  img.src='/styletwo/images/details_icon.png';
  td.append(img);
  td.onclick=createDetailsIconClickedHandler(i,tr);
  tr.append(td);

  tr.classList.add('tableRow');
  //tr.className='tableRow';
  tr.onclick=createRowClickedHandler(i,tr);
  tr.style.cursor='pointer';
  tr.id='ixix'+i;
  table.append(tr);
  i++;
 }


 history.pushState({}, null, "/styletwoBS/Students.jsp");
 var code=document.getElementById("serviceResponseCode").innerHTML;
 var success=document.getElementById("serviceResponseSuccess").innerHTML;
 var message=document.getElementById("serviceResponseMessage").innerHTML;
 if(code=='1') //Add student
 {
  document.getElementById("modalLabel").innerHTML="Student Added";
  $("#modal").modal('show');
  var roll=parseInt(message);
  var x=0;
  var row;
  while(x<viewModel.students.length)
  {
   if(viewModel.students[x].roll_number==roll)
   {
    row=document.getElementById('ixix'+x);
    viewModel.selectedRow=row;
    viewModel.selectedRowIndex=x;
    break;
   }
   x++;
  }
  selectRow(x,row);
  row.scrollIntoView();
 }
 else if(code=='2') //Edit student
 {
  document.getElementById("modalLabel").innerHTML="Student Edited";
  $("#modal").modal('show');
  var roll=parseInt(message);
  var x=0;
  var row;
  while(x<viewModel.students.length)
  {
   if(viewModel.students[x].roll_number==roll)
   {
    row=document.getElementById('ixix'+x);
    viewModel.selectedRow=row;
    viewModel.selectedRowIndex=x;
    break;
   }
   x++;
  }
  selectRow(x,row);
  row.scrollIntoView();
 }
 else if(code=='3') //Delete Student
 {
  document.getElementById("modalLabel").innerHTML="Student Deleted";
  $("#modal").modal('show');
 }

}


function createRowClickedHandler(index,tableRow)
{
 return function()
 {
  selectRow(index,tableRow);
 }
}


function createDetailsIconClickedHandler(index,tableRow)
{
 return function()
 {
  showDetails(index,tableRow);
 }
}

function showDetails(index,tableRow)
{
 document.getElementById("studentViewDivision").style.display="none";
 document.getElementById("addModuleDivision").style.display="none";
 document.getElementById("detailsModuleDivision").style.display="block";
 document.getElementById("deleteModuleDivision").style.display="none";
 document.getElementById("editModuleDivision").style.display="none";

 document.getElementById('detailsModuleRollNumber').innerHTML=viewModel.students[index].roll_number;
 document.getElementById('detailsModuleName').innerHTML=viewModel.students[index].name;
 document.getElementById('detailsModuleAddress').innerHTML=viewModel.students[index].address;
 document.getElementById('detailsModuleGender').innerHTML=viewModel.students[index].gender;
 document.getElementById('detailsModuleDateOfBirth').innerHTML=viewModel.students[index].dateOfBirth;
 document.getElementById('detailsModuleIsIndian').innerHTML=viewModel.students[index].indian;
 document.getElementById('detailsModuleCity').innerHTML=viewModel.students[index].city.name;
}


function createDeleteIconClickedHandler(index,tableRow)
{
 return function()
 {
  deleteStudent(index,tableRow);
 }
}

function deleteStudent(index,tableRow)
{
 document.getElementById("studentViewDivision").style.display="none";
 document.getElementById("addModuleDivision").style.display="none";
 document.getElementById("detailsModuleDivision").style.display="none";
 document.getElementById("deleteModuleDivision").style.display="block";
 document.getElementById("editModuleDivision").style.display="none";

 document.getElementById('deleteModuleRollNumberInput').value=viewModel.students[index].roll_number;
 document.getElementById('deleteModuleRollNumber').innerHTML=viewModel.students[index].roll_number;
 document.getElementById('deleteModuleName').innerHTML=viewModel.students[index].name;
 document.getElementById('deleteModuleAddress').innerHTML=viewModel.students[index].address;
 document.getElementById('deleteModuleGender').innerHTML=viewModel.students[index].gender;
 document.getElementById('deleteModuleDateOfBirth').innerHTML=viewModel.students[index].dateOfBirth;
 document.getElementById('deleteModuleIsIndian').innerHTML=viewModel.students[index].indian;
 document.getElementById('deleteModuleCity').innerHTML=viewModel.students[index].city.name;
 
}


function createEditIconClickedHandler(index,tableRow)
{
 return function()
 {
  EditStudent(index,tableRow);
 }
}

function EditStudent(index,tableRow)
{
 document.getElementById("studentViewDivision").style.display="none";
 document.getElementById("addModuleDivision").style.display="none";
 document.getElementById("detailsModuleDivision").style.display="none";
 document.getElementById("deleteModuleDivision").style.display="none";
 document.getElementById("editModuleDivision").style.display="block";
 
 document.getElementById('editModuleRollNumber').value=viewModel.students[index].roll_number;
 document.getElementById('editModuleName').value=viewModel.students[index].name;
 document.getElementById('editModuleAddress').value=viewModel.students[index].address;
 if(viewModel.students[index].gender=='M')
  document.getElementById('editModuleMale').checked=true;
 else
  document.getElementById('editModuleFemale').checked=true;
 document.getElementById('editModuleDateOfBirth').value=viewModel.students[index].dateOfBirth;
 document.getElementById('editModuleIsIndian').checked=viewModel.students[index].indian;

 var i=0;
 var select=document.getElementById("editModuleCity");
 var option;
 while(i<viewModel.cities.length)
 {
  option=document.createElement('option');
  option.value=viewModel.cities[i].code;
  option.innerHTML=viewModel.cities[i].name;
  select.append(option);
  i++;
 }

 document.getElementById('editModuleCity').value=viewModel.students[index].city.code;
}


function addIconClickedHandler()
{
 document.getElementById("studentViewDivision").style.display="none";
 document.getElementById("addModuleDivision").style.display="block";
 document.getElementById("detailsModuleDivision").style.display="none";
 document.getElementById("deleteModuleDivision").style.display="none";
 document.getElementById("editModuleDivision").style.display="none";
 
 var i=0;
 var select=document.getElementById("addModuleCity");
 var option;
 while(i<viewModel.cities.length)
 {
  option=document.createElement('option');
  option.value=viewModel.cities[i].code;
  option.innerHTML=viewModel.cities[i].name;
  select.append(option);
  i++;
 }
}


function selectRow(index,tableRow)
{
 if(viewModel.selectedRow!=null)
 {
  viewModel.selectedRow.classList.remove('table-active');
 }
 tableRow.classList.add('table-active');
 viewModel.selectedRow=tableRow;
 viewModel.selectedRowIndex=index;
}


function searchStudent(tb)
{
 nn=tb.value.trim().toUpperCase();
 tb.style.color='black';
 if(nn.length==0) return;
 len=viewModel.students.length;
 i=0;
 while(i<len)
 { 
  row=document.getElementById('ixix'+i);
  if(viewModel.students[i].name.toUpperCase().startsWith(nn))
  {
   if(viewModel.selectedRowIndex!=i && viewModel.selectedRowIndex != -1)
   {
    viewModel.selectedRow.classList.remove("table-active");
   }
   viewModel.selectedRow=row;
   viewModel.selectedRowIndex=i;
   row.classList.add("table-active");
   row.scrollIntoView();
   break; 
  }
  i++;
 }
 if(i==len)
 tb.style.color='red';
}


function cancelButtonClicked()
{
 document.getElementById("studentViewDivision").style.display="block";
 document.getElementById("addModuleDivision").style.display="none";
 document.getElementById("detailsModuleDivision").style.display="none";
 document.getElementById("deleteModuleDivision").style.display="none";
 document.getElementById("editModuleDivision").style.display="none";
}


window.addEventListener('load',initView);


</script>