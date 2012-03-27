<%-- Alternate template rendering nav with more pages as a list rather than a navigation bar --%>
<div>
	<ul class="menu1" data-role="listview" data-inset="true">
		<% control Menu(1) %>
			<% if URLSegment == home %><% else %>
			<li class="$LinkingMode">
				<a data-rel="$Link" href="/$RelativeLink" <% if URLSegment == gallery %>data-ajax="false"<% end_if %> class="<% if isSection %>ui-btn-active<% end_if %>">
					$MenuTitle
				</a>
        <% if Children %>
         <ul<% if LinkOrSection = section %> class="activeUL"<% end_if %>>
             <% control Children %>
                 <li class="<% if FirstLast %> $FirstLast<% end_if %><% if LinkOrSection = section %> current <% end_if %><% if Children %> sf-with-ul<% end_if %>">
                 <a data-rel="$Link" class="<% if LinkOrSection = section %> current<% end_if %><% if Children %> sf-with-ul<% end_if %>" href="$Link" title="View more on $Title">$MenuTitle</a>
                 <% if Children %>
                     <ul data-role="listview">
                         <% control Children %>
                         <li class="<% if FirstLast %> $FirstLast<% end_if %><% if LinkOrSection = section %> current <% end_if %><% if Children %> sf-with-ul<% end_if %>">
                             <a data-rel="$Link" class="<% if LinkOrSection = section %> current<% end_if %><% if Children %> sf-with-ul<% end_if %>" href="$Link" title="View more on $Title">$MenuTitle</a>
                             <% if Children %>
                                 <ul data-role="listview">
                                     <% control Children %>
                                     <li class="<% if FirstLast %> $FirstLast<% end_if %><% if LinkOrSection = section %> current <% end_if %><% if Children %> sf-with-ul<% end_if %>">
                                         <a data-rel="$Link" class="<% if LinkOrSection = section %> current<% end_if %><% if Children %> sf-with-ul<% end_if %>" href="$Link" title="View more on $Title">$MenuTitle</a>
                                     </li>
                                     <% end_control %>
                                 </ul>
                              <% end_if %>
                         <% end_control %>
                     </ul>
                  <% end_if %>
             </li>
             <% end_control %>
         </ul>
      <% end_if %>

			</li>
			<% end_if %>
		<% end_control %>

	</ul>
</div>