<%@ Page Title="Show Car " Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MasterView.aspx.cs" Inherits="_1259332.Secured.MasterView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div class="row">
        <div class="col-12">
            <h3>All Car Type</h3>
            <asp:ListView ID="lvCartype" runat="server" DataSourceID="dsCartype" DataKeyNames="TypeId" OnItemCommand="lvCartype_ItemCommand">
               
               
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>No Data</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                
                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:LinkButton ID="selectButton" runat="server" CommandName="Select" CssClass="form form-control form-control-sm">select</asp:LinkButton>
                        </td>
                        <td>
                            <asp:Label ID="TypeIdLabel" runat="server" Text='<%# Eval("TypeId") %>' CssClass="form form-control form-control-sm" />
                        </td>
                        <td>
                            <asp:Label ID="TypeNameLabel" runat="server" Text='<%# Eval("TypeName") %>' CssClass="form form-control form-control-sm" />
                        </td>
                        <td>
                            <asp:Label ID="SeatCapasityLabel" runat="server" Text='<%# Eval("SeatCapasity") %>' CssClass="form form-control form-control-sm" />
                        </td>
                       
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server" class="table">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" class="table table-bordered">
                                    <tr runat="server" style="">
                                        <th runat="server">Select </th>
                                        <th runat="server">Type Id</th>
                                        <th runat="server">Type Name</th>
                                        <th runat="server">Seat Capasity</th>
                                       
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="">
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
                    <tr class="bg-secondary">
                        <td>
                            <asp:LinkButton ID="UNselectbtn" runat="server" CommandName="Unselect"  CssClass="form form-control form-control-sm">Unselect</asp:LinkButton>
                        </td>
                        <td>
                            <asp:Label ID="TypeIdLabel" runat="server" Text='<%# Eval("TypeId") %>' CssClass="form form-control form-control-sm" />
                        </td>
                        <td>
                            <asp:Label ID="TypeNameLabel" runat="server" Text='<%# Eval("TypeName") %>' CssClass="form form-control form-control-sm" />
                        </td>
                        <td>
                            <asp:Label ID="SeatCapasityLabel" runat="server" Text='<%# Eval("SeatCapasity") %>' CssClass="form form-control form-control-sm" />
                        </td>
                        
                    </tr>
                    <tr>
                        <td></td>
                        <td colspan="3">
                            <asp:ListView ID="lvCar" runat="server" DataKeyNames="CarId" DataSourceID="dsCars">

            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>

            <ItemTemplate>
                <tr style="">
                   
                    <td>
                        <asp:Label ID="CarIdLabel" runat="server" Text='<%# Eval("CarId") %>' CssClass="form form-control form-control-sm" />
                    </td>
                    <td>
                        <asp:Label ID="CarModelLabel" runat="server" Text='<%# Eval("CarModel") %>' CssClass="form form-control form-control-sm" />
                    </td>
                    <td>
                        <asp:Label ID="RentedRateLabel" runat="server" Text='<%# Eval("RentedRate") %>' CssClass="form form-control form-control-sm" />
                    </td>
                    <td>
                        <asp:Label ID="RentedDateLabel" runat="server" Text='<%# Eval("RentedDate" , "{0:dd-MMM-yyyy}") %>' CssClass="form form-control form-control-sm" />
                    </td>
                    <td>
                        <asp:Label ID="ReturnDateLabel" runat="server" Text='<%# Eval("ReturnDate" ,"{0:dd-MMM-yyyy}") %>' CssClass="form form-control form-control-sm" />
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("CarId","~/Secured/carDetails.aspx?cid={0}") %>' CssClass="form form-control form-control-sm">view</asp:HyperLink>
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server" class="table">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" class="table table-bordered">
                                <tr runat="server" style="">
                                    <th runat="server">Car Id</th>
                                    <th runat="server">Car Model</th>
                                    <th runat="server">Rented Rate</th>
                                    <th runat="server">Rented Date</th>
                                    <th runat="server">Return Date</th>
                                    <th></th>
                                </tr>
                                <tr runat="server" id="itemPlaceholder">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="">
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            
            
        </asp:ListView>
                        </td>
                    </tr>
                </SelectedItemTemplate>

            </asp:ListView>
            <asp:SqlDataSource ID="dsCartype" runat="server" ConnectionString="<%$ ConnectionStrings:carRent %>" DeleteCommand="DELETE FROM [CarType] WHERE [TypeId] = @TypeId" InsertCommand="INSERT INTO [CarType] ([TypeName], [SeatCapasity]) VALUES (@TypeName, @SeatCapasity)" SelectCommand="SELECT * FROM [CarType]" UpdateCommand="UPDATE [CarType] SET [TypeName] = @TypeName, [SeatCapasity] = @SeatCapasity WHERE [TypeId] = @TypeId">
                <DeleteParameters>
                    <asp:Parameter Name="TypeId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TypeName" Type="String" />
                    <asp:Parameter Name="SeatCapasity" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TypeName" Type="String" />
                    <asp:Parameter Name="SeatCapasity" Type="Int32" />
                    <asp:Parameter Name="TypeId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        
        <asp:SqlDataSource ID="dsCars" runat="server" ConnectionString="<%$ ConnectionStrings:carRent %>" DeleteCommand="DELETE FROM [Car] WHERE [CarId] = @CarId" InsertCommand="INSERT INTO [Car] ([CarModel], [RentedRate], [RentedDate], [ReturnDate], [TypeId]) VALUES (@CarModel, @RentedRate, @RentedDate, @ReturnDate, @TypeId)" SelectCommand="SELECT * FROM [Car] WHERE ([TypeId] = @TypeId)" UpdateCommand="UPDATE [Car] SET [CarModel] = @CarModel, [RentedRate] = @RentedRate, [RentedDate] = @RentedDate, [ReturnDate] = @ReturnDate, [TypeId] = @TypeId WHERE [CarId] = @CarId">
            <DeleteParameters>
                <asp:Parameter Name="CarId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CarModel" Type="String" />
                <asp:Parameter Name="RentedRate" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="RentedDate" />
                <asp:Parameter DbType="Date" Name="ReturnDate" />
                <asp:Parameter Name="TypeId" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="lvCartype" Name="TypeId" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="CarModel" Type="String" />
                <asp:Parameter Name="RentedRate" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="RentedDate" />
                <asp:Parameter DbType="Date" Name="ReturnDate" />
                <asp:Parameter Name="TypeId" Type="Int32" />
                <asp:Parameter Name="CarId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="dsCar" runat="server" ConnectionString="<%$ ConnectionStrings:carRent %>" SelectCommand="SELECT * FROM [Car] WHERE ([TypeId] = @TypeId)" DeleteCommand="DELETE FROM [Car] WHERE [CarId] = @CarId" InsertCommand="INSERT INTO [Car] ([CarModel], [RentedRate], [RentedDate], [ReturnDate], [TypeId]) VALUES (@CarModel, @RentedRate, @RentedDate, @ReturnDate, @TypeId)" UpdateCommand="UPDATE [Car] SET [CarModel] = @CarModel, [RentedRate] = @RentedRate, [RentedDate] = @RentedDate, [ReturnDate] = @ReturnDate, [TypeId] = @TypeId WHERE [CarId] = @CarId">
            <DeleteParameters>
                <asp:Parameter Name="CarId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CarModel" Type="String" />
                <asp:Parameter Name="RentedRate" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="RentedDate" />
                <asp:Parameter DbType="Date" Name="ReturnDate" />
                <asp:Parameter Name="TypeId" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="TypeId" QueryStringField="cid" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="CarModel" Type="String" />
                <asp:Parameter Name="RentedRate" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="RentedDate" />
                <asp:Parameter DbType="Date" Name="ReturnDate" />
                <asp:Parameter Name="TypeId" Type="Int32" />
                <asp:Parameter Name="CarId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
