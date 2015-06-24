<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Custmer_Request.aspx.cs" Inherits="InstaMek.Custmer_Request" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>InstaMek</title>
    <link href="Cu_Request_CSS/css/bootstrap.css" rel="stylesheet" />
    <link href="Cu_Request_CSS/css/bootstrap.min.css" rel="stylesheet" />
    </head>
<body style="background-color:brown">
    <form id="form1" runat="server">
    <div style="background-color:lightgrey ; border:solid ; width:800px ; margin:0 auto">
        
        <table style="width:800px; margin:0  auto;">
            <tr>
                <td>
                    <h5><b>1.What type of car do you have?</b></h5>
                </td>
            </tr>
            <tr style="width:50px">
                <td><asp:TextBox ID="TextBox_Year" runat="server" CssClass="form-control" placeholder="Year" Width="150px" ></asp:TextBox></td>
                <td><asp:TextBox ID="TextBox_Make" runat="server" CssClass="form-control" placeholder="Make" Width="150px" ></asp:TextBox></td>
            </tr>
            <tr style="width:50px">
                 <td><asp:TextBox ID="TextBox_Mpdel" runat="server" CssClass="form-control" placeholder="Model" Width="150px" ></asp:TextBox></td>
                 <td><asp:TextBox ID="TextBox_Engine" runat="server" CssClass="form-control" placeholder="Engine" Width="150px" ></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <h5>Or give your VIN Number</h5>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox_VIN" runat="server" CssClass="form-control" placeholder="VIN Number" Width="300px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <h5><b>2. What Service(s) do you like?</b></h5>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="DropDownList_Services" runat="server" CssClass="form-control" Width="300px"  AutoPostBack="true" OnSelectedIndexChanged="DropDownList_Services_SelectedIndexChanged">
                        <asp:ListItem Value="-1">Choose Services</asp:ListItem>
                        <asp:ListItem>1)  Brakes             </asp:ListItem>
                        <asp:ListItem>2)  Rotor              </asp:ListItem>
                        <asp:ListItem>3)  Tie rods           </asp:ListItem>
                        <asp:ListItem>4)  Strut              </asp:ListItem>
                        <asp:ListItem>5)  Sway bar linkage   </asp:ListItem>
                        <asp:ListItem>6)  Control arm        </asp:ListItem>
                        <asp:ListItem>7)  Alternator         </asp:ListItem>
                        <asp:ListItem>8)  Starter            </asp:ListItem>
                        <asp:ListItem>9)  Battery            </asp:ListItem>
                        <asp:ListItem>10) Fuel pump          </asp:ListItem>
                        <asp:ListItem>11) Fuel filter        </asp:ListItem>
                    </asp:DropDownList>                   
                </td>
                <td>
                    <asp:TextBox ID="TextBox_SelServ" runat="server" CssClass="form-control" placeholder="Services" Width="202px" Height="138px" TextMode="MultiLine"  ReadOnly="true" OnTextChanged="TextBox_SelServ_TextChanged" ></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td>
                <asp:TextBox ID="TextBox_CuNotes" runat="server" CssClass="form-control" Height="144px" TextMode="MultiLine" Width="316px" placeholder=" Please add any notes you may have for us"></asp:TextBox>
            </td>
                </tr>
            <tr>
                <td>
                    <h5><b>3. Where and when do you need this service?</b></h5>
                </td>
           </tr>
           <tr style="width:50px">
                <td>
                 <asp:ImageButton ID="ImageButton_Calnd" runat="server" CssClass="img-responsive" Height="28px" ImageUrl="~/Image/icon-calendar.png" Width="26px" OnClick="ImageButton_Calnd_Click" />                   
                    <asp:TextBox ID="TextBox_Date" runat="server" CssClass="form-control" placeholder="Date" Width="150px" ></asp:TextBox>
                    <asp:Calendar ID="Calendar1_Date" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" OnSelectionChanged="Calendar1_Date_SelectionChanged" Width="200px">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                 </td>
            
                <td >
                    <asp:ImageButton ID="ImageButton_clock" runat="server" CssClass="img-circle" Height="28px" ImageUrl="~/Image/TimeIcon.png" Width="26px" OnClick="ImageButton_clock_Click"/>
                    <asp:TextBox ID="TextBox_Time" runat="server" CssClass="form-control" placeholder="Time" Width="150px" ></asp:TextBox></td>
           </tr>
           <tr style="width:50px">

                 <td><asp:TextBox ID="TextBox_Address" runat="server" CssClass="form-control" placeholder="Address" Width="348px" ></asp:TextBox></td>
                 <td><asp:TextBox ID="TextBox_City" runat="server" CssClass="form-control" placeholder="City" Width="150px" ></asp:TextBox></td>
           </tr>
            <tr>
                <td>
                <h5>Check box if home address is different </h5>
                 </td>
                <td>
                    <asp:CheckBox ID="CheckBox_Address" runat="server" CssClass="checkbox" AutoPostBack="True" OnCheckedChanged="CheckBox_Address_CheckedChanged" Height="16px" Width="16px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox_service" runat="server" CssClass="form-control" placeholder="Service Address" Width="349px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <h5><b>4. How can we get in touch with you? (For your quote)</b></h5>
                </td>
            </tr>
             <tr style="width:50px">
                <td ><asp:TextBox ID="TextBox_FirstName" runat="server" CssClass="form-control" placeholder="First Name" Width="150px" ></asp:TextBox></td>
                <td><asp:TextBox ID="TextBox_LastName" runat="server" CssClass="form-control" placeholder="Last Name" Width="150px" ></asp:TextBox></td>
            </tr>
            <tr style="width:50px">
                 <td><asp:TextBox ID="TextBox_Phone" runat="server" CssClass="form-control" placeholder="Phone Number" Width="150px" ></asp:TextBox></td>
                 <td><asp:TextBox ID="TextBox_Email" runat="server" CssClass="form-control" placeholder="Email Address" Width="150px" TextMode="Email" ></asp:TextBox></td>
            </tr>
            
            <tr>
                <td></td>
                <td></td>
                <td style="margin-right:0 auto">
                    <asp:Button ID="Button_submit" runat="server" Text="Done"  CssClass="btn-success" Height="42px" Width="107px" OnClick="Button_submit_Click"/>
                </td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
