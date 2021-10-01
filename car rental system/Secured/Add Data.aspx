<%@ Page Title="Manage/Add Data" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Add Data.aspx.cs" Inherits="_1259332.Secured.Add_Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/bootstrap-datepicker.standalone.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap-datepicker.js"></script>
    <script>
        <%--$(() => {
            $("#<%:rentDate%>").datepicker();
        })--%>
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div class="row">
        
        <div class="col-12">
            <h3>Manage Car Type</h3>
            <asp:ListView ID="lvAdd" runat="server" DataKeyNames="TypeId" DataSourceID="dsAdd" InsertItemPosition="LastItem" OnItemDeleted="lvAdd_ItemDeleted" OnItemInserted="lvAdd_ItemInserted" OnItemUpdated="lvAdd_ItemUpdated">
       
            
        
        <EditItemTemplate>
            <tr style="">
                
                <td>
                    <asp:Label ID="TypeIdLabel1" runat="server" Text='<%# Eval("TypeId") %>' CssClass="form form-control" />
                </td>
                <td>
                    <asp:TextBox ID="TypeNameTextBox" runat="server" Text='<%# Bind("TypeName") %>' CssClass="form form-control" />
                </td>
                <td>
                    <asp:TextBox ID="SeatCapasityTextBox" runat="server" Text='<%# Bind("SeatCapasity") %>' CssClass="form form-control" />
                </td>
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" CssClass="btn btn-success btn-sm"  />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" CssClass="btn btn-danger btn-sm" />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                
                <td>[Auto]</td>
                <td>
                    <asp:TextBox ID="TypeNameTextBox" runat="server" Text='<%# Bind("TypeName") %>' CssClass="form form-control" />
                </td>
                <td>
                    <asp:TextBox ID="SeatCapasityTextBox" runat="server" Text='<%# Bind("SeatCapasity") %>' CssClass="form form-control" />
                </td>
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert"  CssClass="btn btn-primary btn-sm"  />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" CssClass="btn btn-danger btn-sm" />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="">
               
                <td>
                    <asp:Label ID="TypeIdLabel" runat="server" Text='<%# Eval("TypeId") %>' CssClass="form form-control" />
                </td>
                <td>
                    <asp:Label ID="TypeNameLabel" runat="server" Text='<%# Eval("TypeName") %>' CssClass="form form-control" />
                </td>
                <td>
                    <asp:Label ID="SeatCapasityLabel" runat="server" Text='<%# Eval("SeatCapasity") %>' CssClass="form form-control" />
                </td>
                 <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CssClass="btn btn-danger btn-sm" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit"  CssClass="btn btn-secondary btn-sm" />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server" class="table">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" class="table table-bordered">
                            <tr runat="server" style="">
                               
                                <th runat="server">Type Id</th>
                                <th runat="server">Type Name</th>
                                <th runat="server">Seat Capasity</th>
                                 <th runat="server"></th>
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
        
    </asp:ListView>
        </div>
        <div class="col-12">
            <h3>Manage Cars</h3>
            <asp:ListView ID="lvAdd1" runat="server" DataKeyNames="CarId" DataSourceID="dsCar" InsertItemPosition="LastItem" OnItemDeleted="lvAdd1_ItemDeleted" OnItemInserted="lvAdd1_ItemInserted" OnItemUpdated="lvAdd1_ItemUpdated">
                
                <EditItemTemplate>
                    <tr style="">
                        
                        <td>
                            <asp:Label ID="CarIdLabel1" runat="server" Text='<%# Eval("CarId") %>' CssClass="form form-control" />
                        </td>
                        <td>
                            <asp:TextBox ID="CarModelTextBox" runat="server" Text='<%# Bind("CarModel") %>' CssClass="form form-control" />
                        </td>
                        <td>
                            <asp:TextBox ID="RentedRateTextBox" runat="server" Text='<%# Bind("RentedRate") %>' CssClass="form form-control" />
                        </td>
                        <td>
                            <asp:TextBox ID="RentedDateTextBox" runat="server" Text='<%# Bind("RentedDate", "{0: dd-MMM-yyyy}") %>' CssClass="form form-control" />
                        </td>
                        <td>
                            <asp:TextBox ID="ReturnDateTextBox" runat="server" Text='<%# Bind("ReturnDate", "{0: dd-MMM-yyyy}") %>' CssClass="form form-control" />
                        </td>
                        <td>
                            <asp:TextBox ID="TypeIdTextBox" runat="server" Text='<%# Bind("TypeId") %>' CssClass="form form-control" />
                        </td>
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" CssClass="btn btn-success btn-sm" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" CssClass="btn btn-danger btn-sm" />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        
                        <td>[Auto]</td>
                        <td>
                            <asp:TextBox ID="CarModelTextBox" runat="server" Text='<%# Bind("CarModel") %>' CssClass="form form-control" />
                        </td>
                        <td>
                            <asp:TextBox ID="RentedRateTextBox" runat="server" Text='<%# Bind("RentedRate") %>' CssClass="form form-control" />
                        </td>
                        <td>
                            <asp:TextBox ID="RentedDateIn" runat="server" Text='<%# Bind("RentedDate") %>' CssClass="form form-control" />
                        </td>
                        <td>
                            <asp:TextBox ID="ReturnDateED" runat="server" Text='<%# Bind("ReturnDate") %>' CssClass="form form-control" />
                        </td>
                        <td>
                            <asp:TextBox ID="TypeIdTextBox" runat="server" Text='<%# Bind("TypeId") %>' CssClass="form form-control" />
                        </td>
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" CssClass="btn btn-primary btn-sm"  />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" CssClass="btn btn-danger btn-sm" />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="">
                        
                        <td>
                            <asp:Label ID="CarIdLabel" runat="server" Text='<%# Eval("CarId") %>' CssClass="form form-control" />
                        </td>
                        <td>
                            <asp:Label ID="CarModelLabel" runat="server" Text='<%# Eval("CarModel") %>' CssClass="form form-control" />
                        </td>
                        <td>
                            <asp:Label ID="RentedRateLabel" runat="server" Text='<%# Eval("RentedRate") %>' CssClass="form form-control" />
                        </td>
                        <td>
                            <asp:Label ID="RentedDateLabel" runat="server" Text='<%# Eval("RentedDate", "{0: dd-MMM-yyyy}") %>'  CssClass="form form-control" />
                        </td>
                        <td>
                            <asp:Label ID="ReturnDateLabel" runat="server" Text='<%# Eval("ReturnDate", "{0: dd-MMM-yyyy}") %>' CssClass="form form-control" />
                        </td>
                        <td>
                            <asp:Label ID="TypeIdLabel" runat="server" Text='<%# Eval("TypeId") %>' CssClass="form form-control" />
                        </td>
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CssClass="btn btn-danger btn-sm" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" CssClass="btn btn-secondary btn-sm" />
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
                                        <th runat="server">Type Id</th>
                                         <th runat="server"></th>
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
                
            </asp:ListView>
           
        </div>
        <div class="col-12">
            <h3>Manage Customers</h3>
            <asp:ListView ID="lvAdd2" runat="server" DataKeyNames="CustomerId" DataSourceID="dsCustomer" InsertItemPosition="LastItem" OnItemDeleted="lvAdd2_ItemDeleted" OnItemInserted="lvAdd2_ItemInserted" OnItemUpdated="lvAdd2_ItemUpdated">
                
                <EditItemTemplate>
                    <tr style="">
                        
                        <td>
                            <asp:Label ID="CustomerIdLabel1" runat="server" Text='<%# Eval("CustomerId") %>' CssClass="form form-control" />
                        </td>
                        <td>
                            <asp:TextBox ID="CustomerNameTextBox" runat="server" Text='<%# Bind("CustomerName") %>' CssClass="form form-control" />
                        </td>
                        <td>
                            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' CssClass="form form-control" />
                        </td>
                        <td>
                            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' CssClass="form form-control" />
                        </td>
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" CssClass="btn btn-success btn-sm" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" CssClass="btn btn-danger btn-sm" />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                       
                        <td>[Auto]</td>
                        <td>
                            <asp:TextBox ID="CustomerNameTextBox" runat="server" Text='<%# Bind("CustomerName") %>' CssClass="form form-control" />
                        </td>
                        <td>
                            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' CssClass="form form-control" />
                        </td>
                        <td>
                            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' CssClass="form form-control" />
                        </td>
                         <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" CssClass="btn btn-primary btn-sm"  />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" CssClass="btn btn-danger btn-sm" />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="">
                        
                        <td>
                            <asp:Label ID="CustomerIdLabel" runat="server" Text='<%# Eval("CustomerId") %>' CssClass="form form-control" />
                        </td>
                        <td>
                            <asp:Label ID="CustomerNameLabel" runat="server" Text='<%# Eval("CustomerName") %>' CssClass="form form-control" />
                        </td>
                        <td>
                            <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' CssClass="form form-control" />
                        </td>
                        <td>
                            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' CssClass="form form-control" />
                        </td>
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CssClass="btn btn-danger btn-sm" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit"  CssClass="btn btn-secondary btn-sm" />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server" class="table">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" class="table table-bordered" >
                                    <tr runat="server" style="">
                                        
                                        <th runat="server">Customer Id</th>
                                        <th runat="server">Customer Name</th>
                                        <th runat="server">Phone</th>
                                        <th runat="server">Address</th>
                                        <th runat="server"></th>
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
                
            </asp:ListView>
            
        </div>
        <div class="col-12">
            <h3>Manage Car Rent</h3>
            <asp:ListView ID="lvAdd3" runat="server" DataKeyNames="CarId,CustomerId" DataSourceID="dsCarRent" InsertItemPosition="LastItem" OnItemDeleted="lvAdd3_ItemDeleted" OnItemInserted="lvAdd3_ItemInserted" OnItemUpdated="lvAdd3_ItemUpdated">
                
                <EditItemTemplate>
                    <tr style="">
                        
                        <td>
                            <asp:Label ID="CarIdLabel1" runat="server" Text='<%# Eval("CarId") %>' CssClass="form form-control" />
                        </td>
                        <td>
                            <asp:Label ID="CustomerIdLabel1" runat="server" Text='<%# Eval("CustomerId") %>' CssClass="form form-control" />
                        </td>
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update"  CssClass="btn btn-success btn-sm" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" CssClass="btn btn-danger btn-sm" />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                       
                        <td>
                            <asp:TextBox ID="CarIdTextBox" runat="server" Text='<%# Bind("CarId") %>' CssClass="form form-control" />
                        </td>
                        <td>
                            <asp:TextBox ID="CustomerIdTextBox" runat="server" Text='<%# Bind("CustomerId") %>' CssClass="form form-control" />
                        </td>
                         <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" CssClass="btn btn-primary btn-sm" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" CssClass="btn btn-danger btn-sm" />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="">
                        
                        <td>
                            <asp:Label ID="CarIdLabel" runat="server" Text='<%# Eval("CarId") %>' CssClass="form form-control" />
                        </td>
                        <td>
                            <asp:Label ID="CustomerIdLabel" runat="server" Text='<%# Eval("CustomerId") %>' CssClass="form form-control" />
                        </td>
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CssClass="btn btn-danger btn-sm" />
                           
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
                                        <th runat="server">Customer Id</th>
                                        <th runat="server"></th>
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
                
            </asp:ListView>
           
        </div>
    </div>
    <asp:SqlDataSource ID="dsAdd" runat="server" ConnectionString="<%$ ConnectionStrings:carRent %>" DeleteCommand="DELETE FROM [CarType] WHERE [TypeId] = @TypeId" InsertCommand="INSERT INTO [CarType] ([TypeName], [SeatCapasity]) VALUES (@TypeName, @SeatCapasity)" SelectCommand="SELECT * FROM [CarType]" UpdateCommand="UPDATE [CarType] SET [TypeName] = @TypeName, [SeatCapasity] = @SeatCapasity WHERE [TypeId] = @TypeId">
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
     <asp:SqlDataSource ID="dsCar" runat="server" ConnectionString="<%$ ConnectionStrings:carRent %>" DeleteCommand="DELETE FROM [Car] WHERE [CarId] = @CarId" InsertCommand="INSERT INTO [Car] ([CarModel], [RentedRate], [RentedDate], [ReturnDate], [TypeId]) VALUES (@CarModel, @RentedRate, @RentedDate, @ReturnDate, @TypeId)" SelectCommand="SELECT * FROM [Car]" UpdateCommand="UPDATE [Car] SET [CarModel] = @CarModel, [RentedRate] = @RentedRate, [RentedDate] = @RentedDate, [ReturnDate] = @ReturnDate, [TypeId] = @TypeId WHERE [CarId] = @CarId">
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
                <UpdateParameters>
                    <asp:Parameter Name="CarModel" Type="String" />
                    <asp:Parameter Name="RentedRate" Type="Decimal" />
                    <asp:Parameter DbType="Date" Name="RentedDate" />
                    <asp:Parameter DbType="Date" Name="ReturnDate" />
                    <asp:Parameter Name="TypeId" Type="Int32" />
                    <asp:Parameter Name="CarId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:carRent %>" DeleteCommand="DELETE FROM [Customer] WHERE [CustomerId] = @CustomerId" InsertCommand="INSERT INTO [Customer] ([CustomerName], [Phone], [Address]) VALUES (@CustomerName, @Phone, @Address)" SelectCommand="SELECT * FROM [Customer]" UpdateCommand="UPDATE [Customer] SET [CustomerName] = @CustomerName, [Phone] = @Phone, [Address] = @Address WHERE [CustomerId] = @CustomerId">
                <DeleteParameters>
                    <asp:Parameter Name="CustomerId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CustomerName" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CustomerName" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="CustomerId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
     <asp:SqlDataSource ID="dsCarRent" runat="server" ConnectionString="<%$ ConnectionStrings:carRent %>" DeleteCommand="DELETE FROM [CarRent] WHERE [CarId] = @CarId AND [CustomerId] = @CustomerId" InsertCommand="INSERT INTO [CarRent] ([CarId], [CustomerId]) VALUES (@CarId, @CustomerId)" SelectCommand="SELECT * FROM [CarRent]">
                <DeleteParameters>
                    <asp:Parameter Name="CarId" Type="Int32" />
                    <asp:Parameter Name="CustomerId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CarId" Type="Int32" />
                    <asp:Parameter Name="CustomerId" Type="Int32" />
                </InsertParameters>
         <UpdateParameters>
                    <asp:Parameter Name="CarId" Type="Int32" />
                    <asp:Parameter Name="CustomerId" Type="Int32" />
                 
                </UpdateParameters>
            </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
