
$("b[class=close]").click(function(){
	var li = $(this).parent().parent().parent();
	var classNames = $(li).attr("class");
	classNames += " show-more";
	$(li).attr("class",classNames);
})

$("b[class=open]").click(function(){
	var li = $(this).parent().parent().parent();
	var classNames = $(li).attr("class");
	classNames=classNames.substring(0,classNames.indexOf(" "));
	$(li).attr("class",classNames);
})
