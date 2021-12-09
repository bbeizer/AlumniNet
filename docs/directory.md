### User Directory and Following

In order to connect with other users, they will first navigate to the main user directory.  This is a page that lists out all of the other users of the AlumniNet,
and also displays information for each of them, including their graduation year and interests.  Their email is also provided, and if another user click on it,
they will be redirected to a link to compose a new email to the listed email address.  This is to provide users with a quick and easy way to reach out directly
to other users on the AlumniNet.

If users are interested in connecting directly with another user of the AlumniNet, they are also given the option of following them.  They do this by clicking on the
"follow" button listed next to each user.  

Shown below is the embedded ruby code to list out all of the users of the AlumniNet:

```
<% @users.each do |user| %>
      <tr scope="row">
        <td><%= user.name %></td>
        <td> <a href="mailto:<%= user.email %>" > <%= user.email %>  </a> </td>
        <td><%= user.interests %></td>
        <td><%= user.major %></td>
        <td><%= user.gradyear %></td>
        <td>

        <form action="/followers" method="post">

        <input style="display:none" type="text" name="otheruser" id="otheruser" value='<%= user.name %>'>
        <input class="user" style="display:none" type="text" name="thisuser" id="thisuser" value=''>


          <input value="Follow" type="submit"></input>
        </form>
        
        </td>
      </tr>
    <% end %>
```
    
If a user successfully follows another user, they will be redirected to the "connections" page where they will be informed that they have successfully followed the other user.

At the "connections" page, they will also receive information not only on every user that they follow, but also every other user that follows them.
