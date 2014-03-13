<%@ Page Title="" Language="C#" MasterPageFile="~/SiteFrm.Master" AutoEventWireup="true" CodeBehind="MotivoTraslado.aspx.cs" Inherits="SihoMovil.Pages.Configuracion.GUI.MotivoTraslado" %>


<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<%@ Register assembly="System.Web.DynamicData, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.DynamicData" tagprefix="cc2" %>
<%--<%@Register TagPrefix="Msj" TagName="Mensajes" Src="~/Mensajes.ascx"%>--%> 

<%--<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>--%>
<%--<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>--%>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <%--   <div >
            <img src="../../../Images/hotel.jpg" />
        </div>--%>


    <div class="Divs">
        &nbsp; Motivo Traslado</div>
    <br />
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnableScriptGlobalization="True">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:GridView ID="GridViewMotivoTrasalado" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                DataKeyNames="IDMOTIVOTRASLADO" DataSourceID="SqlDataSourceMOTIVOTRASLADO" Width="709px">
                <Columns>
                    <asp:BoundField DataField="IDMOTIVOTRASLADO" HeaderText="IDMOTIVOTRASLADO" ReadOnly="True" SortExpression="IDMOTIVOTRASLADO">
                    </asp:BoundField>
                    <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION">
                    </asp:BoundField>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:ImageButton ID="ImgBtnActualizar" runat="server" CommandName="Update" ImageUrl="~/App_Themes/iconza_16x16/save_16x16.png" />
                            <asp:ImageButton ID="ImgBtnCancelar" runat="server" CommandName="Cancel" ImageUrl="~/App_Themes/iconza_16x16/cancel_16x16.png"
                                CausesValidation="False" />
                            &nbsp;
                        </EditItemTemplate>
                        <ItemTemplate>
                            &nbsp;<asp:ImageButton ID="ImgBtnEditar" runat="server" CommandName="Edit" ImageUrl="~/App_Themes/iconza_16x16/edit_16x16.png"
                                CausesValidation="False" />
                            <asp:ImageButton ID="ImgBtnSeleccionar" runat="server" CommandName="Select" ImageUrl="~/App_Themes/iconza_16x16/check_mark_16x16.png"
                                CausesValidation="False" />
                            <asp:ImageButton ID="ImgBtnEliminar" runat="server" CommandName="Delete" ImageUrl="~/App_Themes/iconza_16x16/delete_16x16.png"
                                OnClientClick="return confirm('Esta seguro que desea eliminar este registro?');"
                                CausesValidation="False" />
                            &nbsp;
                        </ItemTemplate>
                        <HeaderStyle Width="70px" />
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <%--<asp:SqlDataSource ID="SqlDataSourceMotivoTraslado" runat="server" ConflictDetection="CompareAllValues"
                DeleteCommand="DELETE FROM &quot;CM_MOTIVOTRASLADO&quot; WHERE &quot;IDMOTIVOTRASLADO&quot; = :IDMOTIVOTRASLADO AND &quot;DESCRIPCION&quot; = :DESCRIPCION"
                InsertCommand="INSERT INTO &quot;CM_MOTIVOTRASLADO&quot; (&quot;IDMOTIVOTRASLADO&quot;, &quot;DESCRIPCION&quot;) VALUES (:IDMOTIVOTRASLADO, :DESCRIPCION)"
                OldValuesParameterFormatString="original_{0}" ProviderName="Expression: ConexionSihomovil.ProviderName"
                SelectCommand="SELECT * FROM CM_MOTIVOTRASLADO WHERE  IDMOTIVOTRASLADO &lt;&gt; - 1" UpdateCommand="UPDATE &quot;CM_MOTIVOTRASLADO &quot; SET &quot;DESCRIPCION&quot; = :DESCRIPCION WHERE &quot;IDMOTIVOTRASLADO&quot; = :IDMOTIVOTRASLADO AND &quot;DESCRIPCION&quot; = :DESCRIPCION"
                ConnectionString="<%$ ConnectionStrings:ConexionSihomovil %>">
                <DeleteParameters>
                    <asp:Parameter Name="original_IDMOTIVOTRASLADO" Type="Decimal" />
                    <asp:Parameter Name="original_DESCRIPCION" Type="String" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="DESCRIPCION" Type="String" />
                    <asp:Parameter Name="original_IDMOTIVOTRASLADO" Type="Decimal" />
                    <asp:Parameter Name="original_DESCRIPCION" Type="String" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:Parameter Name="IDMOTIVOTRASLADO" Type="Decimal" />
                    <asp:Parameter Name="DESCRIPCION" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>--%>
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    <div align="right">
        <asp:Button ID="BtnNuevo" runat="server" Text=" Nuevo " CssClass="Boton" OnClick="BtnNuevo_Click" />
    </div>
    <cc1:modalpopupextender BackgroundCssClass="modalBackground" PopupDragHandleControlID="PnBanco"
        runat="server" CancelControlID="Cancelar" PopupControlID="PnBanco" ID="MdPCrearBanco"
        TargetControlID="BtnNuevo" />
    <asp:Panel ID="PnBanco" runat="server">
        <div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-draggable ui-resizable"
            style="left: 0px; top: 0px; width: auto">
            <div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix">
                <span id="ui-dialog-title-dialog" class="ui-dialog-title">Nuevo Banco</span> <a class="ui-dialog-titlebar-close ui-corner-all"
                    href="#"><span id="Cancelar" class="ui-icon ui-icon-closethick">close</span></a>
            </div>
            <div style="height: auto; min-height: 109px; width: auto;" class="ui-dialog-content ui-widget-content"
                id="dialog1">
                <br />
                <asp:UpdatePanel ID="UdPCrearBanco" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <table>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    <asp:Label ID="LblCodigo" runat="server" Text="C&oacute;digo:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TxtCodigo" runat="server" Height="22px" Width="50px" MaxLength="3"
                                        CssClass="numero" OnTextChanged="TxtCodigo_TextChanged"></asp:TextBox>
                                    <cc1:filteredtextboxextender ID="TxtCodigo_FilteredTextBoxExtender" runat="server"
                                        TargetControlID="TxtCodigo" ValidChars="0123456789">
                                    </cc1:FilteredTextBoxExtender>
                                    <asp:RequiredFieldValidator ID="TxtCodigo_RequiredFieldValidator" runat="server"
                                        ErrorMessage="Debe Ingresar un C&oacute;digo" Display="None" ControlToValidate="TxtCodigo"
                                        ValidationGroup="ValidarBanco"></asp:RequiredFieldValidator>
                                    <cc1:validatorcalloutextender ID="TxtCodigo_ValidatorCalloutExtender" runat="server"
                                        TargetControlID="TxtCodigo_RequiredFieldValidator" Width="200px">
                                    </cc1:ValidatorCalloutExtender>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td align="left">
                                    <asp:Label ID="LblDescripcion" runat="server" Text="Descripci&oacute;n:"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:TextBox ID="TxtDescripcion" runat="server" Width="300px" CssClass="mayus"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="TxtDescripcion_RequiredFieldValidator" runat="server"
                                        ErrorMessage="Debe Ingresar una Descripcion" Display="None" ControlToValidate="TxtDescripcion"
                                        ValidationGroup="ValidarBanco"></asp:RequiredFieldValidator>
                                    <cc1:validatorcalloutextender ID="TxtDescripcion_ValidatorCalloutExtender" runat="server"
                                        TargetControlID="TxtDescripcion_RequiredFieldValidator" Width="200px">
                                    </cc1:ValidatorCalloutExtender>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <div align="right">
                            <asp:Button ID="BtnGuardar" runat="server" CssClass="Guardar" Text="Guardar" OnClick="BtnGuardar_Click"
                                ValidationGroup="ValidarBanco" />
                        </div>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="BtnGuardar" EventName="Click" />
                    </Triggers>
                </asp:UpdatePanel>
            </div>
        </div>
    </asp:Panel>
    <asp:UpdatePanel ID="upPnlPage" runat="server">
        <ContentTemplate>
            <%--<Msj:Mensajes ID="omb" runat="server" />--%>
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
