/* contain ajax function */
function callAjaxGetReqest(projectName, url, callback){

    $.ajax({         	
  	  url: url,
  	  statusCode : {
  		  
  		  901: function(){
  			 window.location.href = projectName + "/sessionexpired";
  		  },
  		  200 : function(result){
			callback(result);
  		  },
  		  500 : function(result){
  			  alert("Server not responding...try again later...");
  		  }
  	  }
  });   
}



function callAjaxPostReqest(projectName, url, formData, callback){

	$.ajax({     
  	  url: url,
  	  type: 'POST',
	  processData: false,
	  contentType: false,
	  cache: false,
  	  data: formData,
  	  statusCode : {
  		  
  		  901: function(){
  			 window.location.href = projectName + "/sessionexpired";
  		  },
  		  200 : function(result){
			callback(result);
  		  },
  		  500 : function(result){
  			  alert("Server not responding...try again later...");
  		  }
  	  }
  });   
}