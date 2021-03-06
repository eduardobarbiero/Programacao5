<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista de Contatos</title>
</head>
<body>
	<h2>#${mensagem ? mensagem : ''}</h2>
	<a href="novoContato">Novo Contato</a>
	<table>
		<thead>
			<tr>
				<th>Nome</th>
				<th>E-Mail</th>
				<th>Endereço</th>
				<th>Data de Nascimento</th>
				<th colspan="2">Ações</th>
			</tr>
		</thead>
		<c:forEach var="contato" items="${contatos}">
			<tr bgcolor="#${id.count %2 == 0 ? 'aaee88' : 'ffffff' }">
				<td>${contato.nome}</td>
				<td><c:choose>
						<c:when test="${not empty contato.email}">
							<a href="mailto:${contato.email}">${contato.email}</a>
						</c:when>
						<c:otherwise>
			  E-mail não informado
			</c:otherwise>
					</c:choose></td>
				<td>${contato.endereco}</td>
				<td><fmt:formatDate value="${contato.dataNascimento.time}"
						pattern="dd/MM/yyyy" /></td>
				<td>
				<form method="POST" action="editaContato">
						<input type="hidden" name="id" value="${contato.id}" /> <input
							type="submit" class="ui button red" value="Editar" />
					</form>
				</td>
				<td>
					<form method="POST" action="removeContato">
						<input type="hidden" name="id" value="${contato.id}" /> <input
							type="submit" class="ui button red" value="Remover" />
					</form>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>