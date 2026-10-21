# Journal de bord du projet encadré

## 30/09/2026
Travail de classement de fichier dans l'arborescence

- Récupération du zip pour effectuer l'exercice et unzip:
-       wget http://plurital.org/ppe1/seance1/archive-11.zip
-       unzip a*
-    Création des dossiers et de leurs sous dossiers:
-       dir txt ann img docs
      cd txt
        mkdir 2016 2017 2018
      cd 2016
        mkdir 01 02 03 04 05 06 07 08 09 10 11 12
        cd ../../
        mv 2016_01*.txt txt/2016/01
==> Changer les mois pour effectuer le tri par mois  (01 à 12)
==> Répéter le processus pour txt/2017 et txt/2018
   
      cd ann
     mkdir 2016 2017 2018
     cd 2016
     mkdir 01 02 03 04 05 06 07 08 09 10 11 12
     cd ../2017
      mkdir 01 02 03 04 05 06 07 08 09 10 11 12
     cd ../2018
     mkdir 01 02 03 04 05 06 07 08 09 10 11 12
     cd ../../
     mv 2016_01*.ann ann/2016/01
     mv 2017_01*.ann ann/2017/01
     mv 2018_01*.ann ann/2018/01
==> A répéter en fonction des différentes années et des mois

     ls *.ann
     cd img
     mkdir Paris Tokyo Washington Berlin Rome Romeo
     cd ../..
     mv Romeo*.png img/Romeo
     mv Romeo*.jpg img/Romeo
     mv *Romeo*.jpg img/Romeo
     mv *.jpg img/
     cd Exercice1
     mv Romeo*.jpg img/Romeo
     mv *Romeo*.jpg img/Romeo
     mv *Romeo*.png img/Romeo
     ls Rome
     ls *Rome*
     mv *Romeo*.JPG img/Romeo
     mv *Rome*.JPG img/Rome
     mv *Rome*.jpg img/Rome
     mv *Rome*.svg img/Rome
     mv *Rome*.png img/Rome
     ls *Rome*
     mv *Romeo*.jpeg img/Romeo
     ls *Rome*
     mv *Paris*.* img/Paris
     ls *Paris*
     ls *.docs
     mv *.docx docs
     mv *.odt docs
     mv *.pdf docs
     mv *Washington*.* img/Washington
     mv *Tokyo*.* img/Tokyo
     mv *Kyoto*.* img/Kyoto
     mkdir img/Kyoto
     cd img
     mkdir Taipei
     cd ../
     mv *Kyoto*.* img/Kyoto
     mv *Berlin*.* img/Berlin
     mv *Taipei*.* img/Taipei
     cd ../
     zip -r Exercice1.zip Exercice1/

## 01/10/2026


Création de journal.md et utilidation de la commande vim pour y entré du texte
   >>vim [argument-fichier] #ouvre le fichier
i pour passer en mode insérer et nous permet donc d'y mettre du texte
esc pour quitter le mode insérer et retourner au mode commande
:wq permet de quitter et sauvegarder (write and quit)
:q permet de quitter sans sauvegarder

=========================================

Pour mettre à jour un fichier via le terminal sur github

Se connecter à son github sur le terminal avec les commandes:
   git config --global user.email "djamila.hatteea@gmail.com"
   git config --global user.name "Daia04"

Vérifier que le fichier est en avance sur celle de github (et donc besoin d'update):
   git status

Ensuite préparer le fichier à update:
   git add journal.md

Valider /Commit les changements avec un message descriptif:
   git commit -m "Mise à jour de journal.md"

Push les modifications sur le dépôt distant github:
   git push origin main 

#Exercice pipelines
cd Exercices/

  398  echo "Annotations en 2016 :" > ./locations.txt
  399  grep -r "Location" ann/2016/ | wc -l >> ./locations.txt
  400  echo "Annotations en 2017 :" >> ./locations.txt
  401  grep -r "Location" ann/2017/ | wc -l >> ./locations.txt
  402  echo "Annotations en 2018 :" >> ./locations.txt
  403  grep -r "Location" ann/2018/ | wc -l >> ./locations.txt
  404  git add ./locations.txt
  405  git commit -m "Exercice 1.b"
  406  git push origin main 
  407  history
  408  head -5 ann/2016/*/*
  409  grep "Location" ann/2016/* | cut -f5 | sort | uniq -c | sort -n | tail -f15 > ./classements_2016.txt
  410  grep "Location" ann/2016/*/* | cut -f5 | sort | uniq -c | sort -n | tail -f15 > ./classements_2016.txt
  411  grep "Location" ann/2016/*/* | cut -f5 | sort | uniq -c | sort -n | tail -15 > ./classements_2016.txt
  412  grep "Location" ann/2017/*/* | cut -f5 | sort | uniq -c | sort -n | tail -15 > ./classements_2017.txt
  413  grep "Location" ann/2018/*/* | cut -f5 | sort | uniq -c | sort -n | tail -15 > ./classements_2018.txt
  414  cat classements_2018.txt
  415  head -5 ann/2018/*/*   
  416  grep "Location" ann/2018/*/* | cut -f5 | sort | uniq -c | sort -n | tail -15 > ./classements_2018.txt   
  417  cat ./classements_2018.txt   
  418  grep "Location" ann/2018/*/* | head -1 | cut -d' ' -f7   
  419  grep "Location" ann/2018/*/* | head -1 | cut -d' ' -f8   
  420  grep "Location" ann/2018/*/* | head -1 | cut -d' ' -f5
  421  grep "Location" ann/2018/*/* | head -1 | cut -d' ' -f9
  422  grep "Location" ann/2018/*/* | head -1 | cut -d' ' -f10
  423  grep "Location" ann/2018/*/* | head -1 | cat -A   
  424  grep "Location" ann/2018/*/* | cut -f3 | sort | uniq -c | sort -n | tail -15 > ./classements_2018.txt   
  425  cat classements_2018.txt
  426  grep "Location" ann/2016/*/* | cut -f3 | sort | uniq -c | sort -n | tail -15 > ./classements_2016.txt   
  427  grep "Location" ann/2017/*/* | cut -f3 | sort | uniq -c | sort -n | tail -15 > ./classements_2017.txt   
  428  cat classements_2016.txt
  429  cat classements_2017.txt
  430  git add classements_2016.txt classements_2017.txt classements_2018.txt 
  431  git commit -m "Exercice 2.a"
  432  git push origin main 
  433  history
  434  grep "Location" ann/*/04/* | cut -f3 | sort | uniq -c | sort -n | tail -15 > ./classements_04.txt 
  435  cat ./classements_04.txt 
  436  git add classements_04.txt
  437  git commit -m "Exercice 2.b"
  438  git push origin main 
  439  git pull origin main 
  440  git push origin main 
  441  history
  442  git tag fin-ex-pipelines 
  
## 16/10/26
# Séance 2
## Exercices git II: correction d'erreurs
 Via le terminal, se connecter à son compte github afin d'y modifier le 'journal.md' en y insérant une phrase erreur et une phrase qui devra être présente après correction. Push le tout après avoir commit. 
Pour obtenir l'identifiant SHA :
   -   git log
Pour effacer le commit et les données qui lui sont associé (ici la phrase "Lorem Ipsum":
   -   git reset --hard <codeSHAducommit>
Ne pas oublier --hard car sinon on effacera simplement le commit de l'historique et non pas les modifications associées.
Cependant cela effacera tous les commit et leurs contenu si effectués après le commit effacer...

exercice 3:
    a.

- Création de oups.md puis y ajouter des données avec vim, le add, puis commit ( à répéter plusieurs fois sans push)

- Revenir au tag de la séance 2:
    git reset git-seance2-defaire
- Pour vérifier si les changements ne sont pas staged:
    git status

    b.Suite à une confusion dans la consigne de l'exercice 3.a (mentionnant 'poussé votre dernier commit'), j'ai effectué un push avant le reset...
    J'ai tout de même effectué la suite de l'exercice. Cependant il y aura toujours une trace de mon oups.md dans mon git alors que le principe de reset avant de push permet d'éviter cela.
copier coller du contenu de oups.md :/ (via éditeur de texte) :     
Tu es la princesse et je suis ton serviteur

Misérables jumeaux séparés par le destin.

Simplement pour te protéger ma chère soeur,

J'en deviendrais moi même possédé par le mal.

Venus au monde sous l'attente de la patrie,

Bénis par le son des cloches de notre Eglise.

Pour des raisons auquels les adultes déclamèrent,

Notre avenir heureux fut divisé en deux.

Mais si un jour le monde entier t'en voudrais

Et même si il faisait de toi son ennemi.

Quoi qu'il en soit je te protégerais à jamais,

Alors reste en paix et continue de sourir.

Tu es la princesse et je suis ton serviteur,

Misérables jumeaux séparés par le destin.

Lorsque je fus envoyé en visite au pays voisin,

J'aperçus la dame en vert au milieu de la ville,

Sa douce voix et son sourire des plus tendre

Ont eut raison de mon coeur, il n'y en avait nul doute.

Cependant son altesse désirant ardemment

Que la jeune femme disparaisse de ce monde,

Alors il m'en valait de répondre à ses voeux,

Mais pourquoi ne puis-je endigué mes larmes.

-------------------------------------------

- Supression de oups.md:
git rm oups.md

Exo 4:

a. Mettre de côté la phrase

b. 
- Pour voir si à jour par rapport à la version en ligne:
    git fetch origin
Puis:
    git status
--> Nous renvoit qu'il y a un commit de retard, on essaie donc de pull mais:
"error: impossible de tirer avec un rebasage : vous avez des modifications non indexées.
error: Veuillez les valider ou les remiser.
"

- Pour garder de côté les changements effectués en local pour le moment:
    git stash push -m "Conservation des changements séance 3"
    
- Pour avoir la liste des changements conservés:
    git stash list

- Pour  appliquer les changement et effacé le stash:
    git stash pop "Conservation des changements séance 3"
    
- Les add puis commit (et push)

Exo 5:

- Enfin ajouter un message en updatant le tag de la séance 2:

    git tag -a git-seance2-fin -m "séance 3, version finale des exercices de git"
    
- Puis pousser le tag:

    git push origin git-seance2-fin
