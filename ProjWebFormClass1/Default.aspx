<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProjWebFormClass1.Default" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title></title>
        <style>
            .form_wrap {
                width: 1500px;
                height: auto;
                margin: 50px auto;
                display: flex;

                background: #fff;
                border-radius: 10px;
                overflow: hidden;
                box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.2);
            }


            .cantact_info::before {
                content: '';
                width: 100%;
                height: 100%;

                position: absolute;
                top: 0;
                left: 0;

                background: #4091EC;
                opacity: 0.9;
            }

            .cantact_info {
                width: 38%;
                position: relative;

                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;

                background-image: url('../fondo.jpg');
                background-size: cover;
                background-position: center center;

            }

            .info_title,
            .info_items {
                position: relative;
                z-index: 2;
                color: #fff;
            }

            .info_title {
                margin-bottom: 60px;
            }

            .info_title span {
                font-size: 100px;
                display: block;
                text-align: center;
                margin-bottom: 15px;
            }

            .info_title h2 {
                font-size: 35px;
                text-align: center;
            }

            .info_items p {
                display: flex;
                align-items: center;

                font-size: 16px;
                font-weight: 600;
                margin-bottom: 10px;
            }

            .info_items p:nth-child(1) span {
                font-size: 30px;
                margin-right: 10px;
            }

            .info_items p:nth-child(2) span {
                font-size: 50px;
                margin-right: 15px;
                margin-left: 4px;
            }


            form.form_contact {
                width: 62%;
                padding: 30px 40px;
            }

            form.form_contact h2 {
                font-size: 25px;
                font-weight: 600;
                color: #303030;
                margin-bottom: 30px;
            }

            form.form_contact .user_info {
                display: flex;
                flex-direction: column;
            }

            form.form_contact label {
                font-weight: 600;
            }

            form.form_contact input,
            form.form_contact textarea {
                width: 100%;
                padding: 8px 0px 5px;
                margin-bottom: 20px;

                border: none;
                border-bottom: 2px solid #D1D1D1;

                font-family: 'Open sans';
                color: #5A5A5A;
                font-size: 14px;
                font-weight: 400;
            }

            form.form_contact textarea {
                max-width: 100%;
                min-width: 100%;
                max-height: 90px;
            }

            form.form_contact input[type="button"] {
                width: 180px;
                background: #4091EC;
                padding: 10px;
                border: none;
                border-radius: 25px;

                align-self: flex-end;

                color: #fff;
                font-family: 'Open sans';
                font-size: 16px;
                font-weight: 600;
                cursor: pointer;
            }

            form.form_contact input[type="button"]:hover {
                background: #3371B6;
            }


            .modal_wrap {
                width: 100%;
                height: 100vh;
                background: rgba(0, 0, 0, 0.7);

                position: fixed;
                top: 0;
                left: 0;
                z-index: 3;

                display: flex;
                justify-content: center;
                align-items: center;
            }


            #btnClose {
                display: inline-block;
                padding: 3px 10px;
                margin-top: 10px;
                background: #E25151;
                color: #fff;
                border: 2px solid #B14141;
                cursor: pointer;
            }


            #wrapper {
                display: block;
                width: auto;
                background: #fff;
                margin: 0 20px 0 0;
                
                box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.2);
                text-overflow: ellipsis ;
                white-space: nowrap ;
                overflow: hidden ; 
                
            }
            #wrapper  .title-wrapper{
                padding: 20px 20px;
            }
            #keywords {
                margin: 0 auto;
                font-size: 1.2em;
                margin-bottom: 15px;
                
            }


            #keywords thead {
                cursor: pointer;
                background: #4091EC;
            }

            #keywords thead tr th {
                font-weight: bold;
                padding: 12px 30px;
                padding-left: 42px;
            }

            #keywords thead tr th span {
                color: white;
                padding-right: 20px;
                background-repeat: no-repeat;
                background-position: 100% 100%;
            }

            #keywords thead tr th.headerSortUp,
            #keywords thead tr th.headerSortDown {
                background: #acc8dd;
            }


            #keywords tbody tr {
                color: black;
                
            }

           

            #keywords tbody tr td {
                text-align: center;
                padding: 15px 10px;
            }

            #keywords tbody tr td.lalign {
                text-align: left;
            }
        </style>
    </head>



    <body>

        <section class="form_wrap">

            <section class="cantact_info">
                <section class="info_title">
                    <span></span>
                    <h2>REGISTRO<br>DE PESSOAS</h2>
                </section>
                <section class="info_items">


                </section>
            </section>

            <form action="" class="form_contact" runat="server">
                <h2>Registre uma pessoa</h2>
                <div class="user_info">
                    <label for="names">Nome completo</label>
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>

                    <label for="email">Sexo</label>
                    <asp:TextBox ID="txtsexo" runat="server"></asp:TextBox>

                    <label for="email">Idade</label>
                    <asp:TextBox ID="txtidade" runat="server"></asp:TextBox>

                    <label for="phone">Telefone</label>
                    <asp:TextBox ID="txtfone" runat="server"></asp:TextBox>

                    <asp:Button ID="btnregister" runat="server" Text="Button" OnClick="btnregister_Click" />






                    
                </div>

                <div id="wrapper">
                    <h1 class="title-wrapper">Pessoas Registradas</h1>
        
                    <asp:GridView ID="TbCadastros" runat="server">
                        
                    </asp:GridView>
                </div>
            </form>

        </section>
        
    </body>