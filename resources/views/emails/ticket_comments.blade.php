<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Support Ticket</title>
</head>
<body>
<p>
    {{ $comment->comment }}
</p>

---
<p>Commenté par: {{ $user->name }}</p>

<p>Titre: {{ $ticket->title }}</p>
<p>ID du ticket: {{ $ticket->ticket_id }}</p>
<p>Statut: {{ $ticket->status }}</p>

<p>
    Vous pouvez retrouver vos tickets ici {{ url('tickets/'. $ticket->ticket_id) }}
</p>

</body>
</html>