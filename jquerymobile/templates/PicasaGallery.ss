<!DOCTYPE html>
<html lang="$ContentLocale">
 <head>
	<% base_tag %>
	<title>$Title</title>
	$MetaTags(false)
	<meta name="viewport" content="width=device-width, initial-scale=1">
<% require themedCSS(layout) %>

	<%-- Caution: Any Requirements calls in init() methods of custom page types won't work due to jQuery Mobile loading pages via Ajax, place them all in Page_Controller --%>
	<link rel="stylesheet" href="/themes/jquerymobile/css/boatshowjquery.css" />
    <link rel="stylesheet" href="http://code.jquery.com/mobile/1.0.1/jquery.mobile.structure-1.0.1.min.css" />
	<script src="http://code.jquery.com/jquery-1.6.4.min.js"></script>


<script type="text/javascript">
    $(document).bind("mobileinit", function() {
      $.mobile.page.prototype.options.addBackBtn = true;
      $.mobile.page.prototype.options.backBtnText = "previous";
    });
</script>
<!--    <script src="/themes/jquerymobile/js/jquery.mobile-1.0.1.js"></script>-->

	<script src="http://code.jquery.com/mobile/1.0.1/jquery.mobile-1.0.1.js"></script>



<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-12678754-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(ga);
  })();

</script>
</head>
<body>
	<div data-role="page" id="page">
		<div data-role="header">
			<a href="$Page(home).RelativeLink" data-role="button" data-icon="home" data-iconpos="notext">
				Home
			</a>
            <% if FullSiteLink %>
            <div id="fullSiteLink"><a rel="external" href="$FullSiteLink" title="Go to the Normal Site" class="$LinkingMode">Full Site</a></div>
            <% end_if %>
   			<h1>Hutchwilco NZ Boatshow</h1>

  			<%-- See Navigation_manypages.ss for handling more than half a dozen toplevel pages --%>
		</div>
		<div data-role="content">
            <img style="float:right;margin-left:5px;" src="/themes/jquerymobile/images/wheel.png"/>
            <h2>17-20 May 2012</h2>
            <h3>ASB Showgrounds, Greenlane, Auckland</h3>
            <h3><a href="/win-win-win/">Buy Tickets Early and Win!!</a></h3>
            <ul class="menu1" data-role="listview" data-inset="true"><li class="$LinkingMode"><a href="#menu">Menu</a></li></ul>
			$Layout
		</div>
		<div data-role="footer">
			<% include Footer %>
		</div>
	</div>
    <div data-role="page" id="menu">
		<div data-role="header">
			<a href="$Page(home).RelativeLink" data-role="button" data-icon="home" data-iconpos="notext">
				Home
			</a>
            <% if FullSiteLink %>
            <div id="fullSiteLink"><a rel="external" href="$FullSiteLink" title="Go to the Normal Site" class="$LinkingMode">Full Site</a></div>
            <% end_if %>
   			<h1>Hutchwilco NZ Boatshow</h1>
		</div>
		<div data-role="content">
            <img style="float:right;margin-left:5px;" src="/themes/jquerymobile/images/wheel.png"/>
            <h3><a href="/win-win-win/">Buy Tickets Early and Win!!</a></h3>
            <ul class="menu1" data-role="listview" data-inset="true"><li class="$LinkingMode"><a href="#page">Back to Page</a></li></ul>
            <% include Navigation_manypages %>
		</div>
		<div data-role="footer">
			<% include Footer %>
		</div>
	</div>

$BrowserString
</body>