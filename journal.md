# Journal de bord du projet encadré

##30/09/2026
Travail de classement de fichier dans l'arborescence

   45  git clone git@github.com:YoannDupont/PPE1-2627.git
   46  cd ..
   47  mkdir Exercice1
   48  cd Exercice1
   51  wget http://plurital.org/ppe1/seance1/archive-11.zip
   52  ls
   55  unzip a*
   56  mkdir txt ann img docs
   57  cd txt
   58  mkdir 2016 2017 2018
   59  cd 2016
   60  mkdir 01 02 03 04 05 06 07 08 09 10 11 12
   62  cd ../../
   63  mv 2016_01*.txt txt/2016/01
==> Changer les mois pour effectuer le tri par mois  (01 à 12)
   76  cd txt
   78  ls
   79  cd 2017
   80  mkdir 01 02 03 04 05 06 07 08 09 10 11 12
   81  cd ../../
   82  mv 2017_01*.txt txt/2017/01
==> De même ici pour le tri par mois
   94  cd txt/2018
   95  mkdir 01 02 03 04 05 06 07 08 09 10 11 12
   96  cd ../..
   97  mv 2018_01*.txt txt/2018/01
==> Idem
  109  cd ann
  118  mkdir 2016 2017 2018
  119  cd 2016
  120  mkdir 01 02 03 04 05 06 07 08 09 10 11 12
  121  cd ../2017
  122  mkdir 01 02 03 04 05 06 07 08 09 10 11 12
  123  cd ../2018
  124  mkdir 01 02 03 04 05 06 07 08 09 10 11 12
  125  cd ../../
  127  mv 2016_01*.ann ann/2016/01
  139  mv 2017_01*.ann ann/2017/01
  151  mv 2018_01*.ann ann/2018/01
==> A répéter en fonction des différentes années et des mois
  165  ls *.ann
  167  cd img
  168  mkdir Paris Tokyo Washington Berlin Rome Romeo
  169  cd ../..
  170  mv Romeo*.png img/Romeo
  171  mv Romeo*.jpg img/Romeo
  172  mv *Romeo*.jpg img/Romeo
  173  mv *.jpg img/
  174  cd Exercice1
  175  mv Romeo*.jpg img/Romeo
  176  mv *Romeo*.jpg img/Romeo
  177  mv *Romeo*.png img/Romeo
  178  ls Rome
  179  ls *Rome*
  183  mv *Romeo*.JPG img/Romeo
  184  mv *Rome*.JPG img/Rome
  186  mv *Rome*.jpg img/Rome
  187  mv *Rome*.svg img/Rome
  188  mv *Rome*.png img/Rome
  189  ls *Rome*
  190  mv *Romeo*.jpeg img/Romeo
  191  ls *Rome*
  192  mv *Paris*.* img/Paris
  193  ls *Paris*
  194  ls 
  195  ls *.docs
  196  mv *.docx docs
  197  mv *.odt docs
  198  mv *.pdf docs
  199  ls
  200  mv *Washington*.* img/Washington
  201  mv *Tokyo*.* img/Tokyo
  203  mv *Kyoto*.* img/Kyoto
  204  mkdir img/Kyoto
  206  cd img
  212  mkdir Taipei
  213  cd ../
  214  mv *Kyoto*.* img/Kyoto
  215  mv *Berlin*.* img/Berlin
  216  ls
  217  mv *Taipei*.* img/Taipei
  218  ls
  219  cd ../
  220  zip -r Exercice1.zip Exercice1/

Pas de problèmes rencontrés

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
