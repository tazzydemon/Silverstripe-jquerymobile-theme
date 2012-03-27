<h1 class="pagetitle">$Title</h1>
<div class="typography">
	<% if Content %>
		$Content
	<% end_if %>
</div>
<% control Order %>
	<% include Mobile_Order_Content_Editable %>
<% end_control %>
<!--<% if ContinuePage %><a class="continuelink button" href="$ContinuePage.Link">continue shopping</a><% end_if %><br>-->
<% if CheckoutPage %><a class="checkoutlink button" data-ajax="false" href="$CheckoutPage.Link">proceed to checkout</a><% end_if %>