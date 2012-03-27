<div id="Content" class="wide">
		
	<% if Level(2) %>
	  	<div id="Breadcrumbs">
    		<p>$Breadcrumbs</p>
  		</div>
	<% end_if %>

	<h1>$Title</h1>
		$Content
	
	<div class="flickr" style="float:left">
		$PicasaPhotos
	</div>
	
	<% if PageComments %>
		$PageComments
	<% end_if %>

</div>
