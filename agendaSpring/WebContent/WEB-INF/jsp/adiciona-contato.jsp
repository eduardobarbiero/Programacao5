<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="agenda" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1">
    <title>Novo Contato</title>
    <link href="css/jquery-ui.css" rel="stylesheet">
    <script src="js/jquery.js"></script>
    <script src="js/jquery-ui.js"></script>
  </head>
  <body>
    <h1>Adiciona Contatos</h1>
    <hr/>
    <form action="adicionaContato" method="POST">
        <input type="hidden" id="id" name="id" value="">
    	Nome: <input type="text" id="nome" name="nome" value=""><br>
    	E-mail: <input type="text" id="email" name="email" value=""><br>
    	Endereço: <input type="text" id="endereco" name="endereco" value=""><br>
    	<!-- Data de Nascimento: <input type="text" id="dataNascimento" name="dataNascimento" value=""><br>-->
    	
    	<input type="submit" value="Gravar">
    </form>
  </body>
</html>