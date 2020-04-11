var battery = document.getElementsByClassName("battery_i")[0];
var column = document.getElementsByClassName("column_i")[0];
var elevator = document.getElementsByClassName("elevator_i")[0];
var description = document.getElementsByClassName("description_i")[0];
var submit = document.getElementsByClassName("submit_i")[0];


$(document).ready(function(){
    console.log("Hello");
    $("#building_s").hide(); // second dropdown is disable while first dropdown is empty

    $("#customer_s").change(function(){
        var project = $(this).val();
        if(project == ''){
            $("#building_s").hide();
        }else{
            $("#building_s").show();
        }
        $.ajax({
          url: "/buildings",
          method: "GET",  
          dataType: "json",
          data: {project: project},
          error: function (xhr, status, error) {
                console.error('AJAX Error: ' + status + error);
          },
          success: function (response) {
                console.log(response);
                var buildings = response["buildings"];
                $("#building_s").empty();
  
                $("#building_s").append('<option>Select Task</option>');
                for(var i = 0; i < buildings.length; i++){
                    $("#building_s").append('<option value="' + buildings[i]["id"] + '">' +buildings[i]["name"] + '</option>');
                }
          }
        });
  });

})