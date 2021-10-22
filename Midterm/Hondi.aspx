<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hondi.aspx.cs" Inherits="Midterm.Hondi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hondi Build & Price</title>
    <style>
        h1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Hondi Build & Price</h1>
        </div>
        <hr/>
        <br />
        <table>
            <tr style="vertical-align: top;">
                <td>
                    <asp:Panel ID="panCar" BackColor="#ff4f4d" runat="server" GroupingText="Car Informations" Height="100%" Width="450px">
                        <table>
                            <tr>
                                <td>
                                    <asp:Label ID="lblCity" runat="server" Text="Your City"></asp:Label>
                                </td>

                                <td>
                                    <asp:TextBox ID="txtCity" runat="server" Width="200px"></asp:TextBox>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:Label ID="lblZip" runat="server" Text="Zip Code"></asp:Label>
                                </td>

                                <td>
                                    <asp:TextBox CssClass="tecboc" ID ="txtZip" runat="server" Width="200px" TextMode="Phone"></asp:TextBox>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:Label ID="lblModel" runat="server" Text="Select Car model"></asp:Label>
                                </td>

                                <td>
                                    <asp:DropDownList ID="cboModel" runat="server" Width="200px" AutoPostBack="true"></asp:DropDownList>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:Label ID="lblColor" runat="server" Text="Interior Color"></asp:Label>
                                </td>

                                <td>
                                    <asp:ListBox ID="lstColor" runat="server" Width="200px" AutoPostBack="true"></asp:ListBox>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:Label ID="lblAccessories" runat="server" Text="Accessories"></asp:Label>
                                </td>

                                <td>
                                    <asp:CheckBoxList ID="chklstAccessories" runat="server" Width="200px" AutoPostBack="true"></asp:CheckBoxList>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:Label ID="lblWarranty" runat="server" Text="Warranty"></asp:Label>
                                </td>

                                <td>
                                    <asp:RadioButtonList ID="radlstWarranty" runat="server" Width="200px" AutoPostBack="true"></asp:RadioButtonList>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:Label ID="lblDealer" runat="server" Text="Dealer Contact you by phone?"></asp:Label>
                                </td>

                                <td>
                                    <asp:CheckBox ID="checkDealer" runat="server" AutoPostBack="true" OnCheckedChanged="checkDealer_CheckedChanged"/>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:Label ID="lblPhone" runat="server" Text="Phone Number"></asp:Label>
                                </td>

                                <td>
                                    <asp:TextBox ID="txtPhone" runat="server" Width="200px"></asp:TextBox>
                                </td>
                            </tr>

                        </table>
                    </asp:Panel>
                </td>

                <td>
                    <asp:Panel ID="panPrice" BackColor="#ff4f4d" runat="server" GroupingText="Price Resume" Height="48%" Width="250px">
                        <asp:Literal ID="litPrice" runat="server"></asp:Literal>
                        <br />
                        <asp:Button ID="btnConclude" runat="server" Text="Conclude" OnClick="btnConclude_Click" />
                     </asp:Panel>
                    <br />
                    <asp:Panel ID="panFinal" BackColor="#ff4f4d" runat="server" GroupingText="Final Information" Height="48%" Width="225px">
                        <asp:Literal ID="litFinal" runat="server"></asp:Literal>
                     </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
