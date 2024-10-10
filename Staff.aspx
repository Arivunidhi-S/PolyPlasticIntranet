<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Staff.aspx.cs" Inherits="Staff" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8" />
    <!-- Set the viewport width to device width for mobile -->
    <meta name="viewport" content="width=device-width" />
    <title>Polyplastic | Staff</title>
    <!-- Included CSS Files-->
    <link rel="stylesheet" href="stylesheets/style.css">
    <link rel="stylesheet" href="stylesheets/skins/red.css">
    <!-- skin color -->
    <link rel="stylesheet" href="stylesheets/responsive.css">
    <telerik:RadStyleSheetManager ID="RadStyleSheetManager1" runat="server" />
    <!-- IE Fix for HTML5 Tags -->
    <!--[if lt IE 9]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->
    <style type="text/css">
        @import url("/stylesheets/Grid.Mcs.css");
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <!-- HIDDEN PANEL 
================================================== -->
        <!--<div id="panel">
	<div class="row">
		<div class="twelve columns">
			<img src="images/info.png" class="pics" alt="info">
			<div class="infotext">
				Thank you for visiting my theme! Replace this with your message to visitors.
			</div>
		</div>
	</div>
</div>-->
        <p class="slide">
            <a href="#" class="btn-slide"></a>
        </p>
        <!-- HEADER
================================================== -->
        <div class="row">
            <div class="four columns">
                <div class="logo">
                    <!--<a href="index.html"><h4>Studio Francesca</h4></a>-->
                    <img src="images/header_logo.jpg" alt="" />
                </div>
            </div>
            <div class="eight columns noleftmarg">
                <nav id="nav-wrap">
				<ul class="nav-bar sf-menu">
				
					<li class="current">
					<a href="Index.aspx">Home</a>
						<!--<ul>
												
						<li><a href="index2.html">Without slider</a></li>						
						</ul>-->
					</li>
					
					<li>
					<a href="#">Policy</a>
						<ul>
						<li><a href="SOPP.aspx">SOPP</a></li>
						<li><a href="RecruitmentPolicy.aspx">Recruitment Policy 11</a></li>
						<!--<li><a href="portofolio4.html">4 Columns</a></li>						
						<li><a href="portofoliodetail.html">Project Details</a></li>-->
						</ul>
					</li>
					
					<li>
					<a href="Survey.html">Survey</a>
						<!--<ul>
						<li><a href="blogpage1.html">Blog page style 1</a></li>
						<li><a href="blogpage2.html">Blog page style 2</a></li>
						<li><a href="blogpage3.html">Blog page style 3</a></li>
						<li><a href="blogsinglepost.html">Single post</a></li>
						</ul>-->
					</li>
					
					<li>
					<a href="Feedback.html">Feedback</a>
						<!--<ul>
						<li><a href="about.html">About us</a></li>
						<li><a href="services.html">Services</a></li>						
						</ul>-->
					</li>
					
					<!--<li>
					<a href="#">Features</a>
						<ul>
						<li><a href="columns.html">Columns</a></li>
						<li><a href="elements.html">Elements</a></li>
						<li><a href="typography.html">Typography</a></li>
						</ul>
					</li>
					-->
					<li>
					<a href="contact.html">Contact</a>
					</li>
					<li>
					<a href="AdminPanel.aspx">Admin Panel</a>
											</li>
				</ul>
				</nav>
            </div>
        </div>
        <div class="clear">
        </div>
        <!-- SUBHEADER
================================================== -->
        <div id="subheader">
            <div class="row">
                <div class="twelve columns">
                    <p class="left">
                        STAFF DETAILS
                    </p>
                    <p class="right">
                        <%-- Meet Our Team--%>
                    </p>
                </div>
            </div>
        </div>
        <div class="row">
            <%--<hr>--%>
            <!-- FORMS-->
            <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
                <Scripts>
                    <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js" />
                    <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js" />
                    <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js" />
                </Scripts>
            </telerik:RadScriptManager>
            <script type="text/javascript">
            </script>
            <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server" DefaultLoadingPanelID="RadAjaxLoadingPanel1">
                <AjaxSettings>
                    <telerik:AjaxSetting AjaxControlID="RadGrid1">
                        <UpdatedControls>
                            <telerik:AjaxUpdatedControl ControlID="RadGrid1" />
                            <telerik:AjaxUpdatedControl ControlID="RadInputManager1" />
                            <telerik:AjaxUpdatedControl ControlID="lblStatus" />
                        </UpdatedControls>
                    </telerik:AjaxSetting>
                </AjaxSettings>
            </telerik:RadAjaxManager>
            <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" />
            <div class="twelve">
                <%--  <h5>
                    STAFF MASTER DETAILS</h5>--%>
                <form action="#">
                <fieldset>
                    <legend>
                        <asp:Label class="labelstyle" ID="lblStatus" runat="server" ForeColor="Red" Font-Bold="true" /></legend>
                    <telerik:RadGrid ID="RadGrid1" runat="server" AllowMultiRowEdit="false" OnNeedDataSource="RadGrid1_NeedDataSource"
                        GridLines="Vertical" AllowPaging="True" PagerStyle-AlwaysVisible="true" PagerStyle-Position="Bottom"
                        OnDeleteCommand="RadGrid1_DeleteCommand" AllowAutomaticUpdates="true" AllowAutomaticInserts="true"
                        PagerStyle-Mode="NumericPages" Skin="Sunset" AllowAutomaticDeletes="true" OnInsertCommand="RadGrid1_InsertCommand"
                        AllowSorting="true" AllowFilteringByColumn="true" OnUpdateCommand="RadGrid1_UpdateCommand">
                        <ClientSettings EnableRowHoverStyle="true">
                        </ClientSettings>
                        <MasterTableView AutoGenerateColumns="false" DataKeyNames="Staff_Id" CommandItemDisplay="Top"
                            CommandItemSettings-AddNewRecordText="Add New Staff Details">
                            <PagerStyle Mode="Slider" />
                            <Columns>
                                <telerik:GridEditCommandColumn ButtonType="ImageButton">
                                    <HeaderStyle Width="3%" />
                                </telerik:GridEditCommandColumn>
                                <telerik:GridBoundColumn DataField="Staff_Id" DataType="System.Int64" HeaderText="ID"
                                    ReadOnly="True" SortExpression="Staff_Id" UniqueName="Staff_Id" AllowFiltering="false"
                                    AllowSorting="false" Visible="false">
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="Staff_No" DataType="System.String" HeaderText="Staff No"
                                    SortExpression="Staff_No" UniqueName="Dept_code">
                                    <HeaderStyle Width="10%" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="Staff_Name" DataType="System.String" HeaderText="Staff Name"
                                    SortExpression="Staff_Name" UniqueName="Staff_Name" FilterControlWidth="200px">
                                    <HeaderStyle Width="20%" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="Position" DataType="System.String" HeaderText="Position"
                                    SortExpression="Position" UniqueName="Position" Visible="false">
                                    <HeaderStyle Width="10%" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="Contact_No" DataType="System.String" HeaderText="Contact No"
                                    AllowFiltering="true" SortExpression="Contact_No" UniqueName="Contact_No">
                                    <HeaderStyle Width="10%" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="Email" DataType="System.String" HeaderText="Email"
                                    AllowFiltering="false" SortExpression="Email" UniqueName="Email">
                                    <HeaderStyle Width="15%" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="Nationality" DataType="System.String" HeaderText="Nationality"
                                    SortExpression="Nationality" UniqueName="Nationality" AllowFiltering="false">
                                    <HeaderStyle Width="10%" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="ICNO" DataType="System.String" HeaderText="IC No"
                                    SortExpression="ICNO" UniqueName="ICNO" AllowFiltering="false">
                                    <HeaderStyle Width="10%" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="PassportNo" DataType="System.String" HeaderText="PassportNo"
                                    SortExpression="PassportNo" UniqueName="PassportNo" AllowFiltering="false">
                                    <HeaderStyle Width="10%" />
                                </telerik:GridBoundColumn>
                                <telerik:GridButtonColumn CommandName="Delete" UniqueName="DeleteColumn" ButtonType="ImageButton"
                                    ConfirmText="Are you sure want to delete?">
                                    <HeaderStyle Width="3%" />
                                </telerik:GridButtonColumn>
                            </Columns>
                            <EditFormSettings EditFormType="Template">
                                <EditColumn UniqueName="EditCommandColumn1">
                                </EditColumn>
                                <FormTemplate>
                                    <table cellspacing="2" cellpadding="1" width="100%" border="0">
                                        <tr>
                                            <td colspan="2">
                                                <b>ID:
                                                    <asp:Label ID="lblStaffID" Visible="true" runat="server" Width="20px" Text='<%# Eval("Staff_Id")%>' />
                                                </b>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Staff No:
                                                <asp:Label ID="Label3" runat="server" Text="*" ForeColor="Red" Visible="true" />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblExistingname" runat="server" Text='<%# Eval("Staff_No") %>' Visible="false" />
                                                <asp:TextBox Width="200px" ID="txtStaffNo" MaxLength="150" ToolTip="Maximum Length: 50"
                                                    class="smoothborder" runat="server" Text='<%# Bind("Staff_No") %>'></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="DeptcodeValidator" ControlToValidate="txtStaffNo"
                                                    ErrorMessage="Staff Code is required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </td>
                                            <td>
                                                Staff Name:
                                                <asp:Label ID="Label1" runat="server" Text="*" ForeColor="Red" Visible="true" />
                                            </td>
                                            <td>
                                                <asp:TextBox Width="200px" ID="txtStaffame" MaxLength="50" ToolTip="Maximum Length: 50"
                                                    class="smoothborder" runat="server" Text='<%# Bind("Staff_Name") %>'></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ID="DeptNameValidator1" ControlToValidate="txtStaffame"
                                                    ErrorMessage="Staff Name is required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Date of Birth:
                                            </td>
                                            <td>
                                                <telerik:RadDatePicker ID="DtBirth" runat="server" Width="150px" DateInput-EmptyMessage="Date"
                                                    class="smoothborder" DbSelectedDate='<%# Bind("DateOfBirth") %>' DateInput-DateFormat="dd/MMM/yyyy"
                                                    MinDate="01/01/1900" Skin="Hay">
                                                    <Calendar ID="Calendar1" runat="server">
                                                        <SpecialDays>
                                                            <telerik:RadCalendarDay Repeatable="Today" ItemStyle-CssClass="rcToday" />
                                                        </SpecialDays>
                                                    </Calendar>
                                                </telerik:RadDatePicker>
                                            </td>
                                            <td>
                                                Nationality:
                                            </td>
                                            <td>
                                                <asp:TextBox Width="200px" ID="txtNationality" MaxLength="150" ToolTip="Maximum Length: 50"
                                                    class="smoothborder" runat="server" Text='<%# Bind("Nationality") %>'></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Contact No:
                                            </td>
                                            <td>
                                                <asp:TextBox Width="200px" ID="txtPhone" MaxLength="50" ToolTip="Maximum Length: 520"
                                                    class="smoothborder" runat="server" Text='<%# Bind("Contact_no") %>'></asp:TextBox>
                                            </td>
                                            <td>
                                                Contact No 2:
                                            </td>
                                            <td>
                                                <asp:TextBox Width="200px" ID="txtPhone2" MaxLength="50" ToolTip="Maximum Length: 520"
                                                    class="smoothborder" runat="server" Text='<%# Bind("Contact_no2") %>'></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Email :
                                            </td>
                                            <td>
                                                <asp:TextBox Width="200px" ID="txtEmail" MaxLength="50" ToolTip="Maximum Length: 50"
                                                    class="smoothborder" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                                    ControlToValidate="txtEmail" ErrorMessage="Invalid Email Format" ForeColor="Red">
                                                </asp:RegularExpressionValidator>
                                            </td>
                                            <td>
                                                IC No:
                                            </td>
                                            <td>
                                                <asp:TextBox Width="200px" ID="txtIC" MaxLength="50" ToolTip="Maximum Length: 520"
                                                    class="smoothborder" runat="server" Text='<%# Bind("ICNO") %>'></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Passport No:
                                            </td>
                                            <td>
                                                <asp:TextBox Width="200px" ID="txtPassport" MaxLength="50" ToolTip="Maximum Length: 520"
                                                    class="smoothborder" runat="server" Text='<%# Bind("PassportNo") %>'></asp:TextBox>
                                            </td>
                                            <td>
                                                Passport Expiry:
                                            </td>
                                            <td>
                                                <telerik:RadDatePicker ID="DtPassportExpiry" runat="server" Width="150px" DateInput-EmptyMessage="Date"
                                                    DbSelectedDate='<%# Bind("PassportExpiry") %>' DateInput-DateFormat="dd/MMM/yyyy"
                                                    MinDate="01/01/1900" Skin="Hay">
                                                    <Calendar ID="Calendar2" runat="server">
                                                        <SpecialDays>
                                                            <telerik:RadCalendarDay Repeatable="Today" ItemStyle-CssClass="rcToday" />
                                                        </SpecialDays>
                                                    </Calendar>
                                                </telerik:RadDatePicker>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Visa Entry:
                                            </td>
                                            <td>
                                                <telerik:RadDatePicker ID="DtVisaEntry" runat="server" Width="150px" DateInput-EmptyMessage="Date"
                                                    DbSelectedDate='<%# Bind("VisaEntry") %>' DateInput-DateFormat="dd/MMM/yyyy"
                                                    MinDate="01/01/1900" Skin="Hay">
                                                    <Calendar ID="Calendar4" runat="server">
                                                        <SpecialDays>
                                                            <telerik:RadCalendarDay Repeatable="Today" ItemStyle-CssClass="rcToday" />
                                                        </SpecialDays>
                                                    </Calendar>
                                                </telerik:RadDatePicker>
                                            </td>
                                            <td>
                                                Visa Expiry:
                                                <%-- HOD :--%>
                                            </td>
                                            <td>
                                                <telerik:RadDatePicker ID="DtVisaExpiry" runat="server" Width="150px" DateInput-EmptyMessage="Date"
                                                    DbSelectedDate='<%# Bind("VisaExpiry") %>' DateInput-DateFormat="dd/MMM/yyyy"
                                                    MinDate="01/01/1900" Skin="Hay">
                                                    <Calendar ID="Calendar3" runat="server">
                                                        <SpecialDays>
                                                            <telerik:RadCalendarDay Repeatable="Today" ItemStyle-CssClass="rcToday" />
                                                        </SpecialDays>
                                                    </Calendar>
                                                </telerik:RadDatePicker>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Address Permanent:
                                            </td>
                                            <td>
                                                <asp:TextBox Width="200px" ID="txtPermanentAddress" MaxLength="50" ToolTip="Maximum Length: 520"
                                                    class="smoothborder" runat="server" Text='<%# Bind("PermanentAddress") %>' TextMode="MultiLine"></asp:TextBox>
                                            </td>
                                            <td>
                                                Address Temporary:
                                            </td>
                                            <td>
                                                <asp:TextBox Width="200px" ID="txtTemporaryAddress" MaxLength="50" ToolTip="Maximum Length: 520"
                                                    class="smoothborder" runat="server" Text='<%# Bind("TemporaryAddress") %>' TextMode="MultiLine"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <asp:Button ID="Button1" runat="server" Text='<%# (Container is GridEditFormInsertItem) ? "Insert" : "Update" %>'
                                                    CommandName='<%# (Container is GridEditFormInsertItem) ? "PerformInsert" : "Update" %>'>
                                                </asp:Button>
                                                <asp:Button ID="Button2" runat="server" Text="Cancel" CausesValidation="false" CommandName="Cancel">
                                                </asp:Button>
                                            </td>
                                        </tr>
                                    </table>
                                </FormTemplate>
                            </EditFormSettings>
                        </MasterTableView>
                        <PagerStyle Mode="NumericPages"></PagerStyle>
                    </telerik:RadGrid>
                </fieldset>
                </form>
            </div>
        </div>
        <div class="copyright">
            <div class="row">
                <div class="six columns">
                    &copy;<span class="small"> Copyright 2016 Polyplastic</span>
                </div>
                <!--<div class="six columns">
			<span class="small floatright"> Purchase "Studio Francesca" - WowThemes.net</span>
		</div>-->
            </div>
        </div>
        <!-- JAVASCRIPTS 
================================================== -->
        <!-- Javascript files placed here for faster loading -->
        <script src="javascripts/foundation.min.js"></script>
        <script src="javascripts/jquery.cycle.js"></script>
        <script src="javascripts/app.js"></script>
        <script src="javascripts/modernizr.foundation.js"></script>
        <script src="javascripts/slidepanel.js"></script>
        <script src="javascripts/scrolltotop.js"></script>
        <script src="javascripts/hoverIntent.js"></script>
        <script src="javascripts/superfish.js"></script>
        <script src="javascripts/responsivemenu.js"></script>
        <script src="javascripts/jquery.tweet.js"></script>
        <script src="javascripts/twitterusername.js"></script>
    </div>
    </form>
</body>
</html>
