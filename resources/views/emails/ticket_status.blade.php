<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Support Ticket Statut</title>
</head>
<body>
<p>
    Salut {{ ucfirst($ticketOwner->name) }},
</p>
<p>
    Votre ticket au support avec l'ID #{{ $ticket->ticket_id }} a été résolu et fermé.
</p>
</body>
</html>