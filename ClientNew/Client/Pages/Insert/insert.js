$(document).ready(function(){
	$(".fa-trash-alt").click(function(){
		$("#text-input-div").text("");
	});
});
$(document).ready(function(){
    $("#gaurav").click(function(){
        $("#place_notice_title_div").removeClass("collapse"),
        $("#icon-tray").removeClass("collapse")
    });
});

$(document).ready(function(){
    $("#cross-span, .fa-angle-up").click(function(){
        $("#place_notice_title_div, #color-pallete, #notice_category_super_div").addClass("collapse"),
        $("#icon-tray").addClass("collapse"),
        $("#search_text_bar_super_div").addClass("collapse");
    });
    
});

$(document).ready(function(){
    $("#category-span").click(function(){
        $("#notice_category_super_div").toggleClass("collapse");
        $("#search_text_bar_super_div, #color-pallete").addClass("collapse");
    });
    
});



/*-------------------------------search text bar functioning begins---------------------------*/
$(document).ready(function(){
	$(".fa-search").click(function(){
		$("#color-pallete, #notice_category_super_div").addClass("collapse");
		$("#search_text_bar_super_div").toggleClass("collapse");
	});
});
$(document).ready(function(){
    $("#search_text_bar_div_icon_cross").click(function(){
        $("#search_text_bar_super_div").addClass("collapse");
        $("#search_text_bar_input").val("");
    });
});

$(document).ready(function(){
	$("#search_text_bar_div_icon_check").click(function(){
		

		var str1,final,mark;
		var str2=$("#search_text_bar_input").val();
		if(str2!=""){
			str1= $("#text-input-div").text();
			if(str1!=""){
				for(;;){
					mark=str1.indexOf(str2);
					if(mark>=0){
						var output1=str1.slice(0,mark);
						var str1=str1.slice(mark+str2.length);
						if(final!=undefined){
							final+=output1+"<b>"+str2+"</b>";
						}else{
							final=output1+"<b>"+str2+"</b>";
						}
						
					}else{
						break;
					}
				}
				final+=str1;
				$("#text-input-div").html(final);	
			}else{
				alert("Notice does not contain any text.");
			}
			
		}else{
			alert("There is nothing to search for");
		}
	});
});

/*-------------------------------search text bar functioning begins---------------------------*/



$(document).ready(function(){
	$(".fa-eye-dropper").click(function(){
		$("#color-pallete").toggleClass("collapse");
	});
});

$(document).ready(function(){
	$("circle").click(function(){
		var back_color= $(this).attr("fill");
		$(".form-group").css("background-color",back_color);
		$("#search_text_bar_div, #notice_category_div").css("background-color",back_color);
		$("#icon-tray i").css("color",back_color);
		$("#color-pallete").toggleClass("collapse");
	});
});

