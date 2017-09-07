var expirenceRowCount = 1;
var educationRowCount = 1;
var dependentRowCount = 1;
var validates =true;
var rowvalidate =false;
$("#submit1").click(function(){
	if( $('#firstName').val().length == 0 || $('#firstName').val() =="" || $('#firstName').val()=="undefined"|| $('#lastName').val().length == 0 || $('#lastName').val() =="" || $('#lastName').val()=="undefined" ||$('#emailId').val().length == 0 || $('#emailId').val() =="" || $('#emailId').val()=="undefined"|| $('#employeeRole').val() ==  null || $('#employeeRole').val() == ""  || $('#employeeRole').val()=="undefined" || $('#workLocation').val() ==  null || $('#workLocation').val() == ""  || $('#workLocation').val()=="undefined" || $('#status').val() ==  null || $('#status').val() == ""  || $('#status').val()=="undefined" || $('#employeeType').val() ==  null || $('#employeeType').val() == ""  || $('#employeeType').val()=="undefined")
	{
		if($('#firstName').val().length == 0 || $('#firstName').val() =="" || $('#firstName').val()=="undefined") 
		{
			    $('#firstName').css('color','red');
			    $("#firstName").css("border-color","#e73d4a");
			    $("#firstName").attr("placeholder","Please Enter Full name");
			    $('#firstName').addClass('your-class');
		}
		if($('#lastName').val().length == 0 || $('#lastName').val() =="" || $('#lastName').val()=="undefined") 
		{
			    $('#lastName').css('color','red');
			    $("#lastName").css("border-color","#e73d4a");
			    $("#lastName").attr("placeholder","Please Enter last name");
			    $('#lastName').addClass('your-class');
		}
		if($('#emailId').val().length == 0 || $('#emailId').val() =="" || $('#emailId').val()=="undefined") 
		{
			    $('#emailId').css('color','red');
			    $("#emailId").css("border-color","#e73d4a");
			    $("#emailId").attr("placeholder","Please Enter emailId");
			    $('#emailId').addClass('your-class');
		}
		/* if($('#designationId').val() == null || $('#designationId').val() =="" || $('#designationId').val()=="undefined") {
		    $('#designationId').css('color','red');
		    $("#designationId").css("border-color","#e73d4a");
		    $('#designationId').addClass('your-class');
	    } */
		if($('#emp_id').val() == null || $('#emp_id').val() =="" || $('#emp_id').val()=="undefined") {
		    $('#emp_id').css('color','red');
		    $("#emp_id").css("border-color","#e73d4a");
		    $('#emp_id').addClass('your-class');
	    }
		if($('#employeeRole').val() ==  null || $('#employeeRole').val() == ""  || $('#employeeRole').val()=="undefined" ) {
		    $('#employeeRole').css('color','red');
		    $("#employeeRole").css("border-color","#e73d4a");
		    $('#employeeRole').addClass('your-class');
	    }
		if($('#departmentId').val() ==  null || $('#departmentId').val() == ""  || $('#departmentId').val()=="undefined" ) {
		    $('#departmentId').css('color','red');
		    $("#departmentId").css("border-color","#e73d4a");
		    $('#departmentId').addClass('your-class');
	    }
		
		if($('#workLocation').val() ==  null || $('#workLocation').val() == ""  || $('#workLocation').val()=="undefined" ) {
		    $('#workLocation').css('color','red');
		    $("#workLocation").css("border-color","#e73d4a");
		    $('#workLocation').addClass('your-class');
	    }
		if($('#status').val() ==  null || $('#status').val() == ""  || $('#status').val()=="undefined" ) {
		    $('#status').css('color','red');
		    $("#status").css("border-color","#e73d4a");
		    $('#status').addClass('your-class');
	    }
		if($('#employeeType').val() ==  null || $('#employeeType').val() == ""  || $('#employeeType').val()=="undefined" ) {
		    $('#employeeType').css('color','red');
		    $("#employeeType").css("border-color","#e73d4a");
		    $('#employeeType').addClass('your-class');
	    }

		
		return false;
	}
		$("#addForm1").submit();											
	});
function resetForm()
{
	removeBorder('firstName');
	$('#firstName').val("");
	$('#firstName').removeClass('your-class default-class');
	
	removeBorder('lastName');
	$('#lastName').val("");
	$('#lastName').removeClass('your-class default-class');
	
	removeBorder('emailId');
	$('#emailId').val("");
	$('#emailId').removeClass('your-class default-class');
	
	removeBorder('designationId');
	$('#designationId').val("");
	$('#designationId').removeClass('your-class default-class');

	removeBorder('nickName');
	$('#nickName').val("");
	$('#nickName').removeClass('your-class default-class');
	
	removeBorder('departmentId');
	$('#departmentId').val("");
	$('#departmentId').removeClass('your-class default-class');
	
	removeBorder('workLocation');
	$('#workLocation').val("");
	$('#workLocation').removeClass('your-class default-class');

	removeBorder('reportingTo');
	$('#reportingTo').val("");
	$('#reportingTo').removeClass('your-class default-class');
	
	
	removeBorder('dateOfJoin');
	$('#dateOfJoin').val("");
	$('#dateOfJoin').removeClass('your-class default-class');
	
	removeBorder('sourceOfHire');
	$('#sourceOfHire').val("");
	$('#sourceOfHire').removeClass('your-class default-class');
	
	removeBorder('status');
	$('#status').val("");
	$('#status').removeClass('your-class default-class');
	
	
	removeBorder('seatingLocation');
	$('#seatingLocation').val("");
	$('#seatingLocation').removeClass('your-class default-class');


	removeBorder('employeeType');
	$('#employeeType').val("");
	$('#employeeType').removeClass('your-class default-class');

	removeBorder('workPhone');
	$('#workPhone').val("");
	$('#workPhone').removeClass('your-class default-class');
	
	removeBorder('phoneExtension');
	$('#phoneExtension').val("");
	$('#phoneExtension').removeClass('your-class default-class');
	
	
	
	removeBorder('employeeRole');
	$('#employeeRole').val("");
	$('#employeeRole').removeClass('your-class default-class');
	
	
	removeBorder('contactNum');
	$('#contactNum').val("");
	$('#contactNum').removeClass('your-class default-class');
	
	
	removeBorder('address');
	$('#address').val("");
	$('#address').removeClass('your-class default-class');
	
	
	removeBorder('emailId');
	$('#emailId').val("");
	$('#emailId').removeClass('your-class default-class');

	removeBorder('dateOfExit');
	$('#dateOfExit').val("");
	$('#dateOfExit').removeClass('your-class default-class');
	
	removeBorder('tags');
	$('#tags').val("");
	$('#tags').removeClass('your-class default-class');
	
	removeBorder('maritalStatus');
	$('#maritalStatus').val("");
	$('#maritalStatus').removeClass('your-class default-class');
	
	removeBorder('jobDesc');
	$('#jobDesc').val("");
	$('#jobDesc').removeClass('your-class default-class');
	
	
	removeBorder('aboutMe');
	$('#aboutMe').val("");
	$('#aboutMe').removeClass('your-class default-class');
	
	
	removeBorder('expertise');
	$('#expertise').val("");
	$('#expertise').removeClass('your-class default-class');
	
	removeBorder('dob');
	$('#dob').val("");
	$('#dob').removeClass('your-class default-class');
	
	removeBorder('gender');
	$('#gender').val("");
	$('#gender').removeClass('your-class default-class');	
}
 	
function displayTable(listEmployees) {
			serviceUnitArray = {};
			$
					.each(
							listEmployees,
							function(i, employeeObj) {
								
								serviceUnitArray[employeeObj.id] = employeeObj;
								var id = '"' + employeeObj.id + '"emp_id';
								var tblRow = "<tr>"
										+ "<td title='"+employeeObj.emp_id+"'>"
										+ employeeObj.emp_id
										+ "</td>"
										+ "<td title='"+employeeObj.firstName+"'>"
										+ employeeObj.firstName
										+ "</td>"
										+ "<td title='"+employeeObj.lastName+"'>"
										+ employeeObj.lastName
										+ "</td>"
										+ "<td title='"+employeeObj.emailId+"' >"
										+ employeeObj.emailId
										+ "</td>"
										+ "<td  title='"+employeeObj.departmentName+"'>"
										+ employeeObj.departmentName
										+ "</td>"
										+ "<td title='"+employeeObj.dateOfJoin+"'>"
										+ employeeObj.dateOfJoin
										+ "</td>"
										+ "<td  title='"+employeeObj.workLocation+"' >"
										+ employeeObj.workLocation
										+ "</td>"
										+ "<td  title='"+employeeObj.workPhone+"'>"
										+ employeeObj.workPhone
										+ "</td>"
										+ "<td  title='"+employeeObj.phoneExtension+"'>"
										+ employeeObj.phoneExtension
										+ "</td>"
										+ "<td  title='"+employeeObj.alternateEmail+"'>"
										+ employeeObj.alternateEmail
										+ "</td>"
										+ "<td  title='"+employeeObj.reportingToName+"'>"
										+ employeeObj.reportingToName
										+ "</td>"
										+ "<td  title='"+employeeObj.dob+"'>"
										+ employeeObj.dob
										+ "</td>"
										+ "<td  title='"+employeeObj.contactNum+"'>"
										+ employeeObj.contactNum
										+ "</td>"
										+ "<td  title='"+employeeObj.address+"'>"
										+ employeeObj.address
										+ "</td>"
										+ "<td  title='"+employeeObj.statusName+"'>"
										+ employeeObj.statusName
										+ "</td>"
										+ "<td  title='"+employeeObj.employeeTypeName+"'>"
										+ employeeObj.employeeTypeName
										+ "</td>"
										+ "<td  title='"+employeeObj.sourceOfHireName+"'>"
										+ employeeObj.sourceOfHireName
										+ "</td>"
										+ "<td  title='"+employeeObj.maritalStatusName+"'>"
										+ employeeObj.maritalStatusName
										+ "</td>"
										+ "<td  title='"+employeeObj.employeeRoleName+"'>"
										+ employeeObj.employeeRoleName
										+ "</td>"
										+ "<td  title='"+employeeObj.designationName+"'>"
										+ employeeObj.designationName
										+ "</td>"
										+ "<td  title='"+employeeObj.aboutMe+"'>"
										+ employeeObj.aboutMe
										+ "</td>"
										+ "<td  title='"+employeeObj.tags+"'>"
										+ employeeObj.tags
										+ "</td>"
										+ "<td  title='"+employeeObj.nickName+"'>"
										+ employeeObj.nickName
										+ "</td>"
										+ "<td  title='"+employeeObj.jobDesc+"'>"
										+ employeeObj.jobDesc
										+ "</td>"
										+ "<td  title='"+employeeObj.dateOfExit+"'>"
										+ employeeObj.dateOfExit
										+ "</td>"
										+ "<td  title='"+employeeObj.expertise+"'>"
										+ employeeObj.expertise
										+ "</td>"
										+ "<td  title='"+employeeObj.genderName+"'>"
										+ employeeObj.genderName
										+ "</td>"
										+ "<td style='text-align: center;'><a  onclick='editEmployee("
										+ employeeObj.id
										+ ")'><i style='color: green;' class='fa fa-edit'></i></a>"
										+"</td>" + "</tr >";
								$(tblRow).appendTo("#datatable-colvid tbody");
								var tmp = $("#datatable-colvid").html();
								//alert("tmppp="+tmp);
							});
	}
 	
 	var rowCount = 1;
 	function editEmployee(id) {
		var transactionId = serviceUnitArray[id].id;
		$("#id").val(serviceUnitArray[id].id);
		$("#emp_id").val(serviceUnitArray[id].emp_id);
		$("#prev_emp_id").val(serviceUnitArray[id].prev_emp_id);
		$('#firstName').val(serviceUnitArray[id].firstName);
		$('#lastName').val(serviceUnitArray[id].lastName);
		$('#emailId').val(serviceUnitArray[id].emailId);
		$('#nickName').val(serviceUnitArray[id].nickName);
		$('#departmentId').val(serviceUnitArray[id].departmentId);
		$('#departmentId').trigger("chosen:updated");
		$('#designationId').val(serviceUnitArray[id].designationId);
		$('#designationId').trigger("chosen:updated");
		$('#dateOfJoin').val(serviceUnitArray[id].dateOfJoin);
		$('#seatingLocation').val(serviceUnitArray[id].seatingLocation);
		$('#workPhone').val(serviceUnitArray[id].dateOfJoin);
		$('#phoneExtension').val(serviceUnitArray[id].phoneExtension);
		$('#contactNum').val(serviceUnitArray[id].contactNum);
		$('#address').val(serviceUnitArray[id].address);
		$('#alternateEmail').val(serviceUnitArray[id].alternateEmail);
		$('#dob').val(serviceUnitArray[id].dob);
		$('#tags').val(serviceUnitArray[id].tags);
		$('#jobDesc').val(serviceUnitArray[id].jobDesc);
		$('#aboutMe').val(serviceUnitArray[id].aboutMe);
		$('#expertise').val(serviceUnitArray[id].expertise);
		$('#dateOfExit').val(serviceUnitArray[id].dateOfExit);
		$('#workLocation').val(serviceUnitArray[id].workLocation);
		$('#workLocation').trigger("chosen:updated");
		$('#reportingTo').val(serviceUnitArray[id].reportingTo);
		$('#reportingTo').trigger("chosen:updated");
		$('#sourceOfHire').val(serviceUnitArray[id].sourceOfHire);
		$('#sourceOfHire').trigger("chosen:updated");
		$('#status').val(serviceUnitArray[id].status);
		$('#status').trigger("chosen:updated");
		$('#employeeType').val(serviceUnitArray[id].employeeType);
		$('#employeeType').trigger("chosen:updated");
		$('#employeeRole').val(serviceUnitArray[id].employeeRole);
		$('#employeeRole').trigger("chosen:updated");
		$('#gender').val(serviceUnitArray[id].gender);
		$('#gender').trigger("chosen:updated");
		$('#maritalStatus').val(serviceUnitArray[id].maritalStatus);
		$('#maritalStatus').trigger("chosen:updated");
		
		 var listExperience = serviceUnitArray[id].experienceDetails;
		 
		 if (listExperience != "") {
			$("#experience_table tbody").remove();
			$.each(listExperience,function(i, experienceObj) {
						var experienceRow ="<tr role='row' id='rowCount"+rowCount+"'>"
						+"<td><input name='pprevComp' type='text'  value='"+experienceObj.prevComp+"'/></td>"
						+"<td><input name='pprevJob' type='text'  value='"+experienceObj.prevJob+"'/></td>"
						+"<td><input name='pprevFromDate' type='text'  value='"+experienceObj.prevFromDate+"'/></td>"
						+"<td><input name='pprevToDate' type='text'  value='"+experienceObj.prevToDate+"'/></td>"
						+"<td><textarea  name='pprevJobDesc' rows='4' cols='10'>"+experienceObj.prevJobDesc+"</textarea></td>"
						+"<td><a href='javascript:void(0);' onclick='removeRow("+rowCount+");'>x</a></td>"
						+"</tr>";
						$(experienceRow).appendTo("#experience_table");
						rowCount++;
					});
			
		}
		else if (listExperience == "") {
			$("#experience_table tbody").remove();
			
						var experienceRow ="<tr role='row' id='rowCount"+rowCount+"'>"
						+"<td><input name='pprevComp' type='text'  value=''/></td>"
						+"<td><input name='pprevJob' type='text'  value=''/></td>"
						+"<td><input name='pprevFromDate' type='text'  value=''/></td>"
						+"<td><input name='pprevToDate' type='text'  value=''/></td>"
						+"<td><textarea  name='pprevJobDesc' rows='4' cols='10'></textarea></td>"
						+"<td><a href='javascript:void(0);' onclick='removeRow("+rowCount+");'>x</a></td>"
						+"</tr>";
						$(experienceRow).appendTo("#experience_table");
						rowCount++;
					
			
		}
		// to display education row
		 var listEducation = serviceUnitArray[id].educationDetails;
		 if (listEducation != "") {
			 $("#education_table tbody").remove(); 
			$.each(listEducation,function(i, educationObj) {
						var educationRow ="<tr role='row' id='rowCount"+rowCount+"'>"
						+"<td><input name='school_name' type='text'  value='"+educationObj.schoolName+"'/></td>"
						+"<td><input name='qualification' type='text'  value='"+educationObj.qualification+"'/></td>"
						+"<td><input name='qualified_in' type='text'  value='"+educationObj.qualifiedIn+"'/></td>"
						+"<td><input name='sch_completion_date' type='text'  value='"+educationObj.schoolCompletionDate+"'/></td>"
						+"<td><textarea  name='add_notes' rows='4' cols='10' >"+educationObj.additionalNotes+"</textarea></td>"
						+"<td><textarea  name='interests' rows='4' cols='10' >"+educationObj.interests+"</textarea></td>"
						+"<td><a href='javascript:void(0);' onclick='removeRow("+rowCount+");'>x</a></td>"
						+"</tr>";
						$(educationRow).appendTo("#education_table");
						rowCount++;
					});
			
		}
		 else if (listEducation == "") {
			 $("#education_table tbody").remove(); 
							var educationRow ="<tr role='row' id='rowCount"+rowCount+"'>"
							+"<td><input name='school_name' type='text'  value=''/></td>"
							+"<td><input name='qualification' type='text'  value=''/></td>"
							+"<td><input name='qualified_in' type='text'  value=''/></td>"
							+"<td><input name='sch_completion_date' type='text'  value=''/></td>"
							+"<td><textarea  name='add_notes' rows='4' cols='10' ></textarea></td>"
							+"<td><textarea  name='interests' rows='4' cols='10' ></textarea></td>"
							+"<td><a href='javascript:void(0);' onclick='removeRow("+rowCount+");'>x</a></td>"
							+"</tr>";
							$(educationRow).appendTo("#education_table");
							rowCount++;
				
			}
		 
		// to display dependent row
		 var listDependent = serviceUnitArray[id].dependentDetails;
		 if (listDependent != "") {
			 $("#dependent_table tbody").remove();
			 $.each(listDependent,function(i, dependentObj) {
						var dependentRow ="<tr role='row' id='rowCount"+rowCount+"'>"
						+"<td><input name='dependent_name' type='text'  value='"+dependentObj.dependentName+"'/></td>"
						+'<td><select id="select_rowCount'+rowCount+'" name="dependent_relation">'
						+'<option value="">-- Select --</option>'
						+'<option value="Father">Father</option>'
						+'<option value="Mother">Mother</option>'
						+'<option value="Brother">Brother</option>'
						+'<option value="Sister">Sister</option>'
						+'<option value="Husband">Husband</option>'
						+'<option value="Wife">Wife</option>'
						+'<option value="Child">Child</option>'
						+'</select></td>'
						+"<td><input name='dependent_dob' type='text'  value='"+dependentObj.dependentDob+"'/></td>"
						+"<td><a href='javascript:void(0);' onclick='removeRow("+rowCount+");'>x</a></td>"
						+"</tr>";
						$(dependentRow).appendTo("#dependent_table");
						$('#select_rowCount'+rowCount+'').val(dependentObj.dependentRelation);
						$('#select_rowCount'+rowCount+'').trigger("chosen:updated");
						rowCount++;
					});
			
		}
		 else if (listDependent == "") {
			 $("#dependent_table tbody").remove();
						var dependentRow ="<tr role='row' id='rowCount"+rowCount+"'>"
						+"<td><input name='dependent_name' type='text'  value=''/></td>"
						+'<td><select id="select_rowCount'+rowCount+'" name="dependent_relation">'
						+'<option value="">-- Select --</option>'
						+'<option value="Father">Father</option>'
						+'<option value="Mother">Mother</option>'
						+'<option value="Brother">Brother</option>'
						+'<option value="Sister">Sister</option>'
						+'<option value="Husband">Husband</option>'
						+'<option value="Wife">Wife</option>'
						+'<option value="Child">Child</option>'
						+'</select></td>'
						+"<td><input name='dependent_dob' type='text'  value=''/></td>"
						+"<td><a href='javascript:void(0);' onclick='removeRow("+rowCount+");'>x</a></td>"
						+"</tr>";
						$(dependentRow).appendTo("#dependent_table");
						//$('#select_rowCount'+rowCount+'').val(dependentObj.dependentRelation);
						//$('#select_rowCount'+rowCount+'').trigger("chosen:updated");
						rowCount++;
		}
		
 	
	}  	
 	
 	function updateReportingTo() {
 		var formData = new FormData();
	    var deptId = $("#departmentId").val();
		formData.append('deptId', deptId);
		$.fn.makeMultipartRequest('POST', 'populateReportingTo', false,
				formData, false, 'text', function(data){
			var jsonobj = $.parseJSON(data);
			var empList = jsonobj.empList;
			if((typeof(empList)  != "undefined")){
			
				var optionsForClass = "";
				optionsForClass = $("#reportingTo").empty();
				optionsForClass.append(new Option("-- Select --", ""));
				$.each(empList, function(i, emp) {
					var empId=emp.id;
					var empName=emp.name;
					optionsForClass.append(new Option(empName, empId));
				});
				$('#reportingTo').trigger("chosen:updated");
			}
			
		});
 	}

//	AddExperienceRow starts here
	function addMoreRowsForExperience() {
		rowvalidate =false;
    	var rowid =$('#experience_table tr:last').attr('id');
    	console.log(rowid);
    	
	    if(expirenceRowCount != 1 && rowid!=undefined)
	    {
	    	var rowid =$('#experience_table tr:last').attr('id');
//	 	    alert(rowid);
	        var number = parseInt(rowid.match(/[0-9]+/)[0], 10);
	        var pprevComp = $('#'+number+'pprevComp').val();
		
	        
	        if(pprevComp == "" || pprevComp == null || pprevComp == "undefined")
	        {
				$('#'+number+'pprevComp').css('color','red');
	        	$('#'+number+'pprevComp').css("border-color","#e73d4a");
	        	$('#'+number+'pprevComp').attr("placeholder","Please Enter Previous Company Name");
	        	$('#'+number+'pprevComp').attr("title","Please Enter previous Name");
	        	$('#'+number+'pprevComp').addClass('your-class');
	        	$('#'+number+'pprevComp').focus();
	        	rowvalidate = true;
	        	return false;
			}
	    }
	    else
		{
			var pprevComp = $('#pprevComp').val();
			if(pprevComp == "" || pprevComp == null || pprevComp == "undefined")
		    {
//				alert("Please Enter Name");
				$('#pprevComp').css('color','red');
				$('#pprevComp').css("border-color","#e73d4a");
				$('#pprevComp').attr("placeholder","Please Enter Previous Company Name");
				$('#pprevComp').attr("title","Please Enter Previous Company Name");
				$('#pprevComp').addClass('your-class');
				$('#pprevComp').focus();
	        	rowvalidate = true;
	        	return false;
		    }
		}
	    if(validates)
		{
	    	expirenceRowCount ++;
			var recRow = "<tr role='row' id='rowCount"+expirenceRowCount+"'>"
			+"<td><input name='pprevComp' type='text' id='"+expirenceRowCount+"pprevComp' onkeydown='removeBorder(this.id);' type='text' placeholder='Enter Previous Company Name' class='form-control onlyCharacters'/></td>"
			+"<td><input name='pprevJob' type='text' id='"+expirenceRowCount+"pprevJob' onkeydown='removeBorder(this.id);' placeholder='Enter Job Title'  class='form-control onlyCharacters'/></td>"
			+"<td><input name='pprevFromDate' id='"+expirenceRowCount+"pprevFromDate' onkeydown='removeBorder(this.id);' type='text' placeholder='Enter From Date' class='form-control dtPick'/></td>"
			+"<td><input name='pprevToDate' id='"+expirenceRowCount+"pprevToDate' onkeydown='removeBorder(this.id);' type='text' placeholder='Enter To Date'  class='form-control dtPick'/></td>"
			+"<td><textarea  name='pprevJobDesc' id='"+expirenceRowCount+"pprevJobDesc' onkeydown='removeBorder(this.id);' placeholder='Job Description' class='form-control onlyCharacters' rows='4' cols='10' placeholder=' '/></textarea></td>"
			+"<td><a href='javascript:void(0);' style='color: red;' onclick='removeExperienceRow("+expirenceRowCount+");'>x</a></td>"
			+"</tr>";
			$(recRow).appendTo("#experience_table");
		
			$(".dtPick").datepicker({
			    dateFormat: "dd-MM-yy",
			    changeDate : true,
				changeMonth : true,
				changeYear : true,
			});
		}
	}
	function removeExperienceRow(expirenceRowCount)
	{
		//expirenceRowCount --;
		jQuery('#rowCount'+expirenceRowCount).remove();
	}
//	AddExperienceRow ends here
	
//	AddEducationRow starts here
	function addMoreRowsForEducation()
	{
		rowvalidate =false;
		var rowid =$('#education_table tr:last').attr('id');
		console.log(rowid);
		   
	    if(educationRowCount != 1 && rowid!=undefined)
	    {
	    	var rowid =$('#education_table tr:last').attr('id');
//	 	    alert(rowid);
	        var number = parseInt(rowid.match(/[0-9]+/)[0], 10);
	        var school_name = $('#'+number+'school_name').val();

	        if(school_name == "" || school_name == null || school_name == "undefined")
	        {
//	        	alert("Please Enter Name");
	        	$('#'+number+'school_name').css('color','red');
	        	$('#'+number+'school_name').css("border-color","#e73d4a");
	        	$('#'+number+'school_name').attr("placeholder","Enter School Name");
	        	$('#'+number+'school_name').attr("title","Enter School Name");
	        	$('#'+number+'school_name').addClass('your-class');
	        	$('#'+number+'school_name').focus();
	        	rowvalidate = true;
	        	return false;
	        }
	    }
	    else
		{
			var school_name = $('#school_name').val();
			if(school_name == "" || school_name == null || school_name== "undefined")
		    {
//				alert("Please Enter Name");
				$('#school_name').css('color','red');
			    $("#school_name").css("border-color","#e73d4a");
			    $("#school_name").attr("placeholder","Enter School Name");
			    $("#school_name").attr("title","Enter School Name");
			    $('#school_name').focus();
	        	rowvalidate = true;
	        	return false;
		    }
		}
		if(validates)
		{
			educationRowCount ++;
			var educationRow1 = '<tr role="row" id="rowCount'+educationRowCount+'">'+
			'<td><input name="school_name" id="'+educationRowCount+'school_name" type="text"  placeholder="Enter School Name" class="form-control onlyCharacters" onkeydown="removeBorder(this.id);"/></td>'+
			'<td><input name="qualification" id="'+educationRowCount+'qualification" type="text"  placeholder="Enter Qualification" class="form-control onlyCharacters" onkeydown="removeBorder(this.id);"/></td>'+
			'<td><input name="qualified_in" id="'+educationRowCount+'qualified_in" type="text"  placeholder="Enter Stream/Branch" class="form-control" onkeydown="removeBorder(this.id);"/></td>'+
			'<td><input name="sch_completion_date" id="'+educationRowCount+'sch_completion_date" type="text" placeholder="Year of Passout" placeholder="Enter Year Passedout" class="form-control dtPick" onkeydown="removeBorder(this.id);"/></td>'+
			'<td><textarea name="add_notes" id="'+educationRowCount+'add_notes" class="form-control onlyCharacters"  placeholder="Additional Notes" rows="4" cols="10" onkeydown="removeBorder(this.id);"></textarea></td>'+
			'<td><textarea name="interests" id="'+educationRowCount+'interests" class="form-control onlyCharacters" placeholder="Interests" rows="4" cols="10" onkeydown="removeBorder(this.id);"></textarea></td>'+
			"<td><a href='javascript:void(0);' style='color: red;'  onclick='removeEducationRow("+educationRowCount+");'>x</a></td>"+
			"</tr>";
			$(educationRow1).appendTo("#education_table");
			
			$(".dtPick").datepicker({
			    dateFormat: "dd-MM-yy",
			    changeDate : true,
				changeMonth : true,
				changeYear : true,
			});
		}
	}

	function removeEducationRow(educationRowCount)
	{
		//educationRowCount --;
		jQuery('#rowCount'+educationRowCount).remove();
	}
//	AddEducationRow ends here

//	AddDependentRow starts here
	function addMoreRowsForDependent()
	{
		rowvalidate =false;
		var rowid =$('#dependent_table tr:last').attr('id');
		console.log(rowid);
	    if(dependentRowCount != 1 && rowid!=undefined)
	    {
	    	var rowid =$('#dependent_table tr:last').attr('id');  //$('#dependent_table tr').children().last().attr('id');
//	 	    alert(rowid);
	        var number = parseInt(rowid.match(/[0-9]+/)[0], 10);
	        var dependent_name = $('#'+number+'dependent_name').val();

	        if(dependent_name == "" || dependent_name == null || dependent_name == "undefined")
	        {
//	        	alert("Please Enter Name");
	        	$('#'+number+'dependent_name').css('color','red');
	        	$('#'+number+'dependent_name').css("border-color","#e73d4a");
	        	$('#'+number+'dependent_name').attr("placeholder","Please Enter Dependent Name");
	        	$('#'+number+'dependent_name').attr("title","Please Enter Dependent Name");
	        	$('#'+number+'dependent_name').addClass('your-class');
	        	$('#'+number+'dependent_name').focus();
	        	rowvalidate = true;
	        	return false;
	        }
	    }
	    else
		{
			var dependent_name = $('#dependent_name').val();
			if(dependent_name == "" || dependent_name == null || dependent_name == "undefined")
		    {
//				alert("Please Enter Name");
				$('#dependent_name').css('color','red');
				$('#dependent_name').css("border-color","#e73d4a");
				$('#dependent_name').attr("placeholder","Please Enter Dependent Name");
				$('#dependent_name').attr("title","Please Enter Dependent Name");
				$('#dependent_name').addClass('your-class');
				$('#dependent_name').focus();
	        	rowvalidate = true;
	        	return false;
		    }
		}
		if(validates)
		{
			dependentRowCount ++;
			var dependentRow1 = '<tr role="row" id="dependentRowCount'+dependentRowCount+'">'+
			'<td><input name="dependent_name" id="'+dependentRowCount+'dependent_name" type="text" placeholder="Enter Dependent Name" onkeydown="removeBorder(this.id);" class="form-control onlyCharacters"/></td>'+
			'<td><select name="dependent_relation" id="'+dependentRowCount+'dependent_relation" class="form-control" onchange="removeBorder(this.id);">'+
				'<option value="">-- Select Relation --</option>'+
				'<option value="Father">Father</option>'+
				'<option value="Mother">Mother</option>'+
				'<option value="Brother">Brother</option>'+
				'<option value="Sister">Sister</option>'+
				'<option value="Husband">Husband</option>'+
				'<option value="Wife">Wife</option>'+
				'<option value="Child">Child</option>'+
			'</select></td>'+
			'<td><input name="dependent_dob" id="'+dependentRowCount+'dependent_dob" type="text" placeholder="Enter Date Of Brith" class="form-control dtPick" onkeydown="removeBorder(this.id);"/></td>'+
			"<td><a href='javascript:void(0);' style='color: red;' onclick='removeDependentRow("+dependentRowCount+");'>x</a></td>"+
			"</tr>";
			$(dependentRow1).appendTo("#dependent_table");
			
			$(".dtPick").datepicker({
			    dateFormat: "dd-MM-yy",
			    changeDate : true,
				changeMonth : true,
				changeYear : true,
			});
		}
	}
	
	function removeDependentRow(dependentRowCount)
	{
		jQuery('#dependentRowCount'+dependentRowCount).remove();
		//dependentRowCount --;
	}

//	AddDependentRow ends here		
		function deleteEmployee(id,empId){
	 		var count = 0;
			var checkstr =  confirm('Are you sure you want to delete this?');
			if(checkstr == true){
			  $.ajax({
						type : "POST",
						url : "deleteEmployee.json",
						data : "emp_rec_id="+id+"&emp_id="+empId,
						success : function(response) {
							displayTable(response);
							window.location.href='employeeHome';
						},
						error : function(e) {
						}
					});
				
			}else{
			return false;
			}
	 	}
		function getEmployeesList(){
			var id =  $("#id").val();
			var departmentId =  $("#departmentId").val();
			var locationId =  $("#workLocation").val();
			var reportingTo = $("#reportingTo").val();
			var sourceOfHire =$("#sourceOfHire").val();
			var empStatus = $("#status").val();
			var empType = $("#employeeType").val();
			var empRole = $("#employeeRole").val();
			var title = $("#designationId").val();
			var maritalStatus = $("#maritalStatus").val();
			var gender = $("#gender").val();
			
			var formData = new FormData();
		    
			formData.append('id', id);
		    formData.append('departmentId', departmentId);
		    formData.append('locationId',locationId);
		    formData.append('reportingTo',reportingTo);
		    formData.append('sourceOfHire',sourceOfHire);
		    formData.append('empStatus',empStatus);
		    formData.append('empType',empType);
		    formData.append('empRole',empRole);
		    formData.append('title',title);
		    formData.append('maritalStatus',maritalStatus);
		    formData.append('gender',gender);
		    $.fn.makeMultipartRequest('POST', 'getEmployeesList', false,
					formData, false, 'text', function(data){
				var jsonobj = $.parseJSON(data);
				var empList = jsonobj.empList;
				if((typeof(empList)  != "undefined") && (empList != "") ){
					$("#datatable-colvid tbody").html("");
					displayTable(empList);
				}
			});
			
		}
