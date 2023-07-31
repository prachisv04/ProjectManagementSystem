(function ($) {
    'use strict';
    /*==================================================================
        [ Daterangepicker ]*/
    try {
        $('.js-datepicker').daterangepicker({
            "singleDatePicker": true,
            "showDropdowns": true,
            "autoUpdateInput": false,
            locale: {
                format: 'DD/MM/YYYY'
            },
        });
    
        var myCalendar = $('.js-datepicker');
        var isClick = 0;
    
        $(window).on('click',function(){
            isClick = 0;
        });
    
        $(myCalendar).on('apply.daterangepicker',function(ev, picker){
            isClick = 0;
            $(this).val(picker.startDate.format('DD/MM/YYYY'));
    
        });
    
        $('.js-btn-calendar').on('click',function(e){
            e.stopPropagation();
    
            if(isClick === 1) isClick = 0;
            else if(isClick === 0) isClick = 1;
    
            if (isClick === 1) {
                myCalendar.focus();
            }
        });
    
        $(myCalendar).on('click',function(e){
            e.stopPropagation();
            isClick = 1;
        });
    
        $('.daterangepicker').on('click',function(e){
            e.stopPropagation();
        });
    
    
    } catch(er) {console.log(er);}
    /*[ Select 2 Config ]
        ===========================================================*/
    
    try {
        var selectSimple = $('.js-select-simple');
    
        selectSimple.each(function () {
            var that = $(this);
            var selectBox = that.find('select');
            var selectDropdown = that.find('.select-dropdown');
            selectBox.select2({
                dropdownParent: selectDropdown
            });
        });
    
    } catch (err) {
        console.log(err);
    }
    

})(jQuery);

function validatename()
{
	
	var x=document.getElementById("name").value;
	re = /^[a-zA-Z][a-zA-Z\s]*$/;

	  if(re.test(x))
		  {
		  document.getElementById("error1").innerHTML=" ";
		  return true;
		  }
	  else{ 
	  document.getElementById("error1").innerHTML="Name can`t be digits";
	  return false;
	  }
}

function validatenum() {
	  var x, text;

	  // Get the value of the input field with id="numb"
	  x = document.getElementById("mob").value;
	  re = /^\d{10}/;
	
	  // If x is Not a Number or less than one or greater than 10
	 if(re.test(x)){
		 document.getElementById("error3").innerHTML=" ";
	  return true;
	  } else {
		  document.getElementById("error3").innerHTML="Number must be 10 digits";
	  }

	}

function validatepass(){
	
	var pass = document.getElementById("pass").value;
	var cpass = document.getElementById("cpass").value;
	
	if(pass != cpass){
		document.getElementById("error").innerHTML = "Password mismatch";
	
		return false;
	}
	return true;
}

function valmis()
{
	var len=document.getElementById("misid").value.length;
	if(len>0)
		{
		document.getElementById("error2").innerHTML=" ";
		}
}

function validateclass()
{
	var cls=document.getElementById("cls").value;
	if(cls=="TE-11" || cls=="TE-9" || cls=="TE-10")
		{
		document.getElementById("error2").innerHTML=" ";
		}
	else
		{
		document.getElementById("error2").innerHTML=" invalid class";
		}
}
