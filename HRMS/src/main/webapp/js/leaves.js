function resetForm()
{
	removeBorder('name');
	$('#name').val("");
	$('#name').removeClass('your-class default-class');
	
	removeBorder('fromDate1');
	$('#fromDate1').val("");
	$('#fromDate1').removeClass('your-class default-class');
	
	removeBorder('toDate1');
	$('#toDate1').val("");
	$('#toDate1').removeClass('your-class default-class');
	
	removeBorder('applicable');
	$('#applicable').val("");
	$('#applicable').removeClass('your-class default-class');
	
	removeBorder('description');
	$('#description').val("");
	$('#description').removeClass('your-class default-class');

}

function displayTable(listOrders) {
		$('#tableId').html('');
		var tableHead = '<table class="table table-striped table-hover table-bordered"	id="datatable-colvid">'
				+ '<thead><tr><th>Leave</th><th>From Date</th> <th>To Date</th><th style="text-align: center;">Action</th>	</tr></thead><tbody></tbody></table>';
		$('#tableId').html(tableHead);
		serviceUnitArray = {};
		$.each(	listOrders,	function(i, orderObj) {
							serviceUnitArray[orderObj.id] = orderObj;
							var id = '"' + orderObj.id + '"';
							var tblRow = "<tr >"
									+ "<td   title='"+orderObj.leaveType+"'>"
									+ orderObj.leaveType
									+ "</td>"
									+ "<td   title='"+orderObj.fromDate+"'>"
									+ orderObj.fromDate
									+ "</td>"
									+ "<td   title='"+orderObj.toDate+"'>"
									+ orderObj.toDate
									+ "</td>"
									+ "<td style='text-align: center;'><a  onclick='editLeave("
									+ orderObj.id
									+ ")'><i style='color: green;' class='fa fa-edit pointer'></i></a>&nbsp;|&nbsp;"
									+ "<a  onclick='deleteLeave("
									+ orderObj.id
									+ ")'><i style='color: red;' class='fa fa-trash pointer'></i></a></td>" + "</tr >";
							$(tblRow).appendTo("#datatable-colvid tbody");
						});
		 $('#datatable-colvid').DataTable({
		        "dom": 'C<"clear">lfrtip',
		        "colVis": {
		            "buttonText": "Change columns",
		        "buttons": [{extend:"copy",className:"btn default"},{extend:"print",className:"btn default"},{extend:"pdf",className:"btn default"},{extend:"csv",className:"btn default"}]
		        }
		    });
	}
	function editLeave(id) {
		$("#id").val(serviceUnitArray[id].id);
		$("#name").val(serviceUnitArray[id].name);
		$('#fromDate1').val(serviceUnitArray[id].fromDate);
		$('#toDate1').val(serviceUnitArray[id].toDate);
//		$(window).scrollTop($('#addForm').offset().top);
		}
	function submitLeave() {
		
		if($('#leaveType').val() == "undefined" || $('#leaveType').val().length == 0 || $('#leaveType').val() == "" )
		{												   
	    	if($('#leaveType').val().length == 0  || $('#leaveType').val() == "" || $('#leaveType').val() == "undefined") {
			    $('#leaveType').css('color','red');
			    $("#leaveType").css("border-color","#e73d4a");
			    $("#leaveType").attr("placeholder","Please Enter Holiday Name");
			    $('#leaveType').addClass('your-class');
			    $('#leaveType').focus();
		    }
		    return false;												  
		} 
		    
		var leaveType =  $("#leaveType").val();
		var id =  $("#id").val();
		var fromDate1 = $("#fromDate1").val();
		var toDate1 = $("#toDate1").val();
		var email = $("#email").val();
		var reason = $("#reason").val();
		var formData = new FormData();
	    
	     formData.append('leaveType', leaveType);
	    formData.append('fromDate1', fromDate1);
	    formData.append('toDate1', toDate1);
	    formData.append('email', email);
	    formData.append('reason', reason);
	    formData.append('id',id);
	    $.fn.makeMultipartRequest('POST', 'addLeave', false,
				formData, false, 'text', function(data){
	    	
			var jsonobj = $.parseJSON(data);
			alert(jsonobj.message);
			var alldata = jsonobj.allOrders1;
			if(typeof(alldata)  === "undefined" || jsonobj.message =="duplicate" ){
			
			}else{
				console.log(jsonobj.allOrders1);
				displayTable(alldata);
			}
			
			if(jsonobj.message =="duplicate"){
				
			}else{
				$("#id").val("0");
				$('#addForm').trigger("reset");
			}
		});
	    
	}
	
	function deleteLeave (id){
		var checkstr =  confirm('Are you sure you want to delete this?');
		if(checkstr == true){
		var formData = new FormData();
	    
	     formData.append('id', id);
		$.fn.makeMultipartRequest('POST', 'deleteLeave', false,
				formData, false, 'text', function(data){
			var jsonobj = $.parseJSON(data);
			alert(jsonobj.message);
			var alldata = jsonobj.allOrders1;
			console.log(jsonobj.allOrders1);
			displayTable(alldata);
		});
		}
		
	}
	