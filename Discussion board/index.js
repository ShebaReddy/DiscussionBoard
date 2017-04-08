
	function getcomment(id)
	{

$(document).keypress(function(e) 
	{
 
	if(e.which === 13) 
	{
		
		var comment=$('#comment'+id).val();
	
		var currentTime = new Date();
		var timestamp = currentTime.getTime();
		$.post("comment.php", {post_id:id,comment:comment,timestamp:timestamp},
		function(response)
		{
			
			
			//if(response=='success')
			{
				$( ".comments"+id ).append("<div class='view'><b>Viewer:</b>"+comment+"</div>");
			
				$('#comment'+id).val('');
					id=0;
			}
			
		});
    }
});
		
		
	}

	 