<%@page import="vitrine.database.Products"%>
<%@page import="vitrine.models.Product"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Locale"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&family=Montserrat:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&family=Nunito:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">
        
        <link href="assets/css/header.css" rel="stylesheet">
        <link href="assets/css/footer.css" rel="stylesheet">
        <link href="assets/css/products-page.css" rel="stylesheet">
        
       
    </head>
    <body>
      
        <div class="products-page">
            <h2>Promoção de Cadeiras </h2>
            <div class="products">
                <% 
                    for(Product product: Products.data){
                %>
                    <div class="product">
                        <img src="<%=product.getImage()%>" />
                        <span class="name"><%=product.getName()%></span>
                        <%
                            Locale brazil = new Locale("pt", "BR");
                            NumberFormat format = NumberFormat.getCurrencyInstance(brazil);
                            String formattedPrice = format.format(product.getPrice());    
                        %>
                        <span class="price"><%=formattedPrice%></span>
                        <a href="product.jsp?id=<%=product.getId()%>">Ver Detalhes</a>
                    </div>
                <% } %>
            </div>
        </div>
    </body>
</html>
