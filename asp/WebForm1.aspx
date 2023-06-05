<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="dotnetCPIS358.WebForm1" %>
      
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        * {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
  *,
  *:before,
  *:after {
    color: #000 !important;
    text-shadow: none !important;
    background: transparent !important;
    -webkit-box-shadow: none !important;
    box-shadow: none !important;
  }
  button,
select {
  text-transform: none;
}
        .auto-style19 {
            border-collapse: collapse;
            background-color: transparent;
        }
        .auto-style20 {
            padding: 0;
            color: red;
        }
        .auto-style21 {
            margin-left: 0;
            margin-right: 0;
            margin-top: 0;
            margin-bottom: 10px;
        }
        .auto-style22 {
            padding: 0;
            color: red;
            height: 29px;
        }
        .auto-style23 {
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style19" style="border-spacing: 0;">
                <tr>
                    <td class="auto-style20">ID:</td>
                    <td class="auto-style20">
                        <asp:TextBox ID="ID_TextBox" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ID_TextBox" ErrorMessage="Please enter your ID number." ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">
                        <p class="auto-style21" style="orphans: 3; widows: 3;">
                            User Name:</p>
                    </td>
                    <td class="auto-style20">
                        <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">
                        <p class="auto-style21" style="orphans: 3; widows: 3;">
                            Email:</p>
                    </td>
                    <td class="auto-style20">
                        <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Email" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" ErrorMessage="Please enter a valid email address." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">
                        <p class="auto-style21" style="orphans: 3; widows: 3;">
                            Password:</p>
                    </td>
                    <td class="auto-style20">
                        <asp:TextBox ID="Password" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Password" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">
                        <p class="auto-style21" style="orphans: 3; widows: 3;">
                            Confirm Password:</p>
                    </td>
                    <td class="auto-style20">
                        <asp:TextBox ID="ConfirmPassword" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style20">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password must be identitcal as Password." ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        <p class="auto-style21" style="orphans: 3; widows: 3;">
                            Country</p>
                        <p class="auto-style21" style="orphans: 3; widows: 3;">
                            Upload Image</p>
                    </td>
                    <td class="auto-style22">
                        <asp:DropDownList ID="CountryList" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem>Select Country</asp:ListItem>
                            <asp:ListItem>Saudi Arabia</asp:ListItem>
                            <asp:ListItem>Kuwait</asp:ListItem>
                            <asp:ListItem>Qatar</asp:ListItem>
                            <asp:ListItem>United Arab Emirates</asp:ListItem>
                            <asp:ListItem>Syria</asp:ListItem>
                            <asp:ListItem>Bahrain</asp:ListItem>
                            <asp:ListItem>Yemen</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                    <td class="auto-style22">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="CountryList" ErrorMessage="Please select your country" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" />
                        <asp:Label ID="Error_lbl" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20"></td>
                    <td class="auto-style20">
                        <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Text="Submit" CssClass="auto-style23" />
                        <input id="Reset1" type="reset" value="reset" /></td>
                    <td class="auto-style20">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:databse001ConnectionString %>" SelectCommand="SELECT * FROM [signup]" OnSelecting="SqlDataSource1_Selecting" InsertCommand="INSERT INTO signup(ID, UserName, Password, Email, Country, img_path) VALUES (@ID, @Name, @Password, @Email, @Country, @imgpath)">
                            <InsertParameters>
                                <asp:ControlParameter ControlID="ID_TextBox" Name="ID" PropertyName="Text" />
                                <asp:ControlParameter ControlID="UserName" Name="Name" PropertyName="Text" />
                                <asp:ControlParameter ControlID="Password" Name="Password" PropertyName="Text" />
                                <asp:ControlParameter ControlID="Email" Name="Email" PropertyName="Text" />
                                <asp:ControlParameter ControlID="CountryList" Name="Country" PropertyName="SelectedValue" />
                                <asp:ControlParameter ControlID="FileUpload1" Name="imgpath" PropertyName="FileBytes" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">&nbsp;</td>
                    <td class="auto-style20">
                        <asp:Button ID="Update" runat="server" OnClick="Submit_Click" Text="Update" />
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:databse001ConnectionString %>" InsertCommand="INSERT INTO signup(ID, UserName, Password) VALUES (@ID, @Name, @Email, @Password, @Country)" SelectCommand="SELECT * FROM [signup]" OnSelecting="SqlDataSource1_Selecting" UpdateCommand="UPDATE signup SET ID =@ID, UserName =@Name, Password =@Password, Email =@Email, Country =@Country">
                            <InsertParameters>
                                <asp:ControlParameter ControlID="ID_TextBox" Name="ID" PropertyName="Text" />
                                <asp:ControlParameter ControlID="UserName" Name="Name" PropertyName="Text" />
                                <asp:ControlParameter ControlID="Email" Name="Email" PropertyName="Text" />
                                <asp:ControlParameter ControlID="Password" Name="Password" PropertyName="Text" />
                                <asp:ControlParameter ControlID="CountryList" Name="Country" PropertyName="SelectedValue" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:ControlParameter ControlID="ID_TextBox" Name="ID" PropertyName="Text" />
                                <asp:ControlParameter ControlID="UserName" Name="Name" PropertyName="Text" />
                                <asp:ControlParameter ControlID="Password" Name="Password" PropertyName="Text" />
                                <asp:ControlParameter ControlID="Email" Name="Email" PropertyName="Text" />
                                <asp:ControlParameter ControlID="CountryList" Name="Country" PropertyName="SelectedValue" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" PageSize="3" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="img_path" HeaderText="img_path" SortExpression="img_path" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:databse001ConnectionString %>" 
                            DeleteCommand="DELETE FROM [signup] WHERE [ID] = @ID" 
                            InsertCommand="INSERT INTO [signup] ([ID], [UserName], [Email], [Password], [Country]) VALUES (@ID, @Name, @Email, @Password, @Country)"
                            SelectCommand="SELECT * FROM [signup]"
                            UpdateCommand="UPDATE [signup] SET [ID] = @ID, [UserName] = @Name, [Email] = @Email, [Passwrod] = @Password WHERE [ID] = @ID">
                         </asp:SqlDataSource>
        <br />
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource3" OnSelectedIndexChanged="ListView1_SelectedIndexChanged" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFFFFF; color: #284775;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                    </td>
                    <td>
                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CountryLabel" runat="server" Text='<%# Eval("Country") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color:#999999;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>
                        <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color:#E0FFFF; color: #333333;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                    </td>
                    <td>
                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CountryLabel" runat="server" Text='<%# Eval("Country") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color:#E0FFFF; color: #333333;">
                                    <th runat="server"></th>
                                    <th runat="server">ID</th>
                                    <th runat="server">UserName</th>
                                    <th runat="server">Password</th>
                                    <th runat="server">Email</th>
                                    <th runat="server">Country</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color:#E2DED6; font-weight: bold;color: #333333;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                    </td>
                    <td>
                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CountryLabel" runat="server" Text='<%# Eval("Country") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:DataPager ID="DataPager2" runat="server" PagedControlID="ListView1" PageSize="5">
            <Fields>
                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
            </Fields>
        </asp:DataPager>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
 