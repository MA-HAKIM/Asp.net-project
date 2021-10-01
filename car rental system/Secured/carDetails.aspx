<%@ Page Title="Car Info" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="carDetails.aspx.cs" Inherits="_1259332.Secured.carDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataSourceID="dsCarDetails" RenderOuterTable="False" DataKeyNames="CarId,CustomerId">
        <HeaderTemplate>
          <div class="row">
              <h2>Car Information</h2>
         
        </HeaderTemplate>
        
        <ItemTemplate>
             <div class="col-2 text-end py-1">Customer Name</div>
            <div class="col-10 py-1  border-bottom"><%# Eval("CustomerName") %></div>
            <div class="col-2 text-end py-1">Rented Rate</div>
            <div class="col-10 py-1 border-bottom"><%# Eval("RentedRate") %></div>
            <div class="col-2 text-end py-1"> Rented Date</div>
            <div class="col-10 py-1 border-bottom"><%# Eval("RentedDate","{0:dd-MM-yyyy}") %></div>
            <div class="col-2 text-end py-1">Return Date</div>
            <div class="col-10 py-1  border-bottom"><%# Eval("ReturnDate","{0:dd-MM-yyyy}") %></div>
            <div class="col-2 text-end py-1">Address & Contact</div>
            <div class="col-10 py-1 border-bottom">
                <div><%# Eval("Address") %></div>
                <div>Phone: <%# Eval("Phone") %></div>
            
            </div>
        </ItemTemplate>
        
        <FooterTemplate>
             </div>
        </FooterTemplate>
    </asp:FormView>

    <a class="" href="/Secured/MasterView.aspx">Back to Master View</a>
    <asp:GridView ID="gvDetails" runat="server" CssClass="table table-bordered my-4" ShowHeaderWhenEmpty="true"
        AutoGenerateColumns="False" DataSourceID="dsDetails" OnPreRender="gvDetails_PreRender">
        <Columns>
            <asp:BoundField DataField="CarModel" HeaderText="Car Model" SortExpression="CarModel" />
            <asp:BoundField DataField="TypeName" HeaderText="Type Name" SortExpression="TypeName" />
            <asp:BoundField DataField="SeatCapasity" HeaderText="Seat Capasity" SortExpression="SeatCapasity" />
        </Columns>

    </asp:GridView>
    <asp:SqlDataSource ID="dsDetails" runat="server" ConnectionString="<%$ ConnectionStrings:carRent %>" SelectCommand="SELECT Car.CarModel, CarType.TypeName, CarType.SeatCapasity FROM Car INNER JOIN CarType ON Car.TypeId = CarType.TypeId INNER JOIN CarRent ON Car.CarId = CarRent.CarId INNER JOIN Customer ON CarRent.CustomerId = Customer.CustomerId"></asp:SqlDataSource>
    <asp:SqlDataSource ID="dsCartype" runat="server" ConnectionString="<%$ ConnectionStrings:carRent %>" SelectCommand="SELECT Car.RentedRate, Car.RentedDate, Car.ReturnDate, Car.CarModel, Customer.CustomerName, Customer.Phone, Customer.Address FROM Car INNER JOIN CarRent ON Car.CarId = CarRent.CarId INNER JOIN Customer ON CarRent.CustomerId = Customer.CustomerId WHERE (Car.CarId = @CarId)">
        <SelectParameters>
            <asp:QueryStringParameter Name="CarId" QueryStringField="cid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsCarDetails" runat="server" ConnectionString="<%$ ConnectionStrings:carRent %>" SelectCommand="SELECT CarRent.CarId, CarRent.CustomerId, Car.RentedRate, Car.RentedDate, Car.ReturnDate, Customer.CustomerName, Customer.Phone, Customer.Address FROM CarRent INNER JOIN Car ON CarRent.CarId = Car.CarId INNER JOIN Customer ON CarRent.CustomerId = Customer.CustomerId WHERE (CarRent.CarId = @CarId)">
        <SelectParameters>
            <asp:QueryStringParameter Name="CarId" QueryStringField="cid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
