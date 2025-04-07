TP_FLUTTER fait par GUEYE Adama 

Réponses aux questions du TP :
Pourquoi utiliser un constructeur factory ?
On utilise un constructeur factory pour faciliter la création d’instances à partir de sources externes comme des données JSON, en personnalisant la logique de construction de l’objet.

Pourquoi utiliser notifyListeners() ?
on utilise notifyListeners pour avertir les widgets à l’écoute que les données ont changé, afin qu’ils puissent se reconstruire automatiquement et refléter l’état mis à jour.

Que se passe-t-il si on oublie d’appeler notifyListeners() ?
L’interface utilisateur ne sera pas informée des changements de données, donc elle ne se mettra pas à jour même si l’état interne a évolué.

Quelle est la responsabilité d’un ViewModel ?
 Il sert d’intermédiaire entre la logique métier (services, gestion des données) et l’interface utilisateur. Il ne contient pas de code UI, mais expose un état et des actions que la vue peut utiliser.
