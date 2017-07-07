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



function callAjaxPostReqest(projectName, url, param, callback){
console.log(param);
    
	$.ajax({     
  	  url: url,
  	  type: 'POST',
  	  data:param,
	  contentType: "application/json; charset=utf-8",
	  dataType: "json",
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