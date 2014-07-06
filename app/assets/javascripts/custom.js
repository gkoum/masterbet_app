$(function(){
	(function myFunction() 	{
		var feeds = $('.feed')
		feeds.each(function() {
  			var c = $(this).find(".myCanvas");
  			var ctx = c[0].getContext("2d");
  			var img = $(this).find(".avatar");
  			ctx.drawImage(img[0], 10, 10);
  			ctx.font = "20px Arial";
  			var text = $(this).find(".content").html();
  			ctx.fillText(text,20,50);
 /* var t = $(this).find("#demo")
  t[0].innerHTML = "Paragraph changed.";*/
	})
})
	();});