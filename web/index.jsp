
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="projet.GestionFactory" %>
<%@ page import="projet.Etudiant" %>

<html>
<head>
  <title>Etudiants</title>
</head>
<body>
<h1>Liste des étudiants :</h1>
<%for (Etudiant etudiant : GestionFactory.getEtudiants()) {%>
<div><a href="details.jsp?id=<%=etudiant.getId()%>"><%=etudiant.getNom()%>
  <%=etudiant.getPrenom()%>
</a> </div>
<%}%>
</body>
</html>
