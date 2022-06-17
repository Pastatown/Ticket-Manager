<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Suppor Ticket Information</title>
</head>
<body>
<p>
Merci {{ ucfirst($user->name) }} d'avoir contacté le support. Un ticket au support a été ouvert pour vous. Vous allez être notifié par mail quand vous aurez une réponse. Les détails de votre ticket sont les suivants:
</p>

<p>Titre: {{ $ticket->title }}</p>
<p>Priorité: {{ $ticket->priority }}</p>
<p>Statut: {{ $ticket->status }}</p>

<p>
Vous pouvez retrouver vos tickets ici {{ url('tickets/'. $ticket->ticket_id) }}
</p>

</body>
</html>