
<%@ page import="projet.GestionFactory" %>
<%@ page import="projet.Etudiant" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Detail sur un étudiant</title>
</head>
<body>
<%
    int id = Integer.valueOf(request.getParameter("id"));

    Etudiant etudiant = GestionFactory.getEtudiantById(id);
%>

<div> Nom : <%= etudiant.getNom()%></div>
<div> Prenom : <%= etudiant.getPrenom()%></div>
<div> Absence : <%= GestionFactory.getAbsencesByEtudiantId(id)%></div>

<div><a href="index.jsp">Retour à la liste des étudiants</a></div>
</body>
</html>