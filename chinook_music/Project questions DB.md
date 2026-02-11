Ouvre ta console (rails c) et essaie de trouver les réponses :



🟢 *Niveau Facile*



1\. Combien d'albums y a-t-il au total dans la base ? 

Album.count = **347**



2\. Qui est l'auteur de la chanson "White Room" ? (Indice : trouve la chanson avec find\_by, puis affiche son artist)

Track.find\_by(title:"White Room") = **artist: "Eric Clapton"**



3\. Quelle chanson dure exactement 188133 milliseconds ?

Track.find\_by(duration:188133) = **title:"Perfect"**



4\. Quel groupe a sorti l'album "Use Your Illusion II" ?

Album.find\_by(title:"Use Your Illusion II") = **artist: "Guns N Roses"**







🟡 *Niveau Moyen*



5\. Combien d'albums ont un titre qui contient "Great" ?

Album.where("title LIKE ?", "%Great%") = 

**id: 1077, title: "Greatest Hits II", artist: "Queen",**

**id: 1078, title: "Greatest Kiss", artist: "Kiss",**

**id: 1108, title: "Vault: Def Leppards Greatest Hits", artist: "Def Leppard",**

**id: 1182, title: "Greatest Hits", artist: "Lenny Kravitz",**

**id: 1203, title: "Motley Crue Greatest Hits", artist: "Mötley Crüe",**

**id: 1226, title: "Greatest Hits I", artist: "Queen",**

**id: 1243, title: "Rotten Apples: Greatest Hits", artist: "Smashing Pumpkins",**

**id: 1256, title: "The Police Greatest Hits", artist: "The Police",**

**id: 1327, title: "Great Opera Choruses", artist: "Chicago Symphony**

**id: 1335, title: "Great Performances - Barbers Adagio and Other Roma...", artist: "Leonard Bernstein \& New York Philharmonic",**



6\. Supprime tous les albums dont le nom contient "music".

Album.where("title LIKE ?", "%music%").destroy\_all = **4 albums supprimés**



7\. Combien d'albums ont été écrits par AC/DC ?

Album.where("artist LIKE ?", "%AC/DC%").count = **2**



8\. Combien de chansons durent exactement 158589 millisecondes ? 

Track.where("duration LIKE ?", 158589).count = **0**





🔴 *Niveau Difficile (Les boucles)*



9\. Affiche tous les titres des pistes de AC/DC.

Track.where(artist: "AC/DC").each do |track|

&nbsp; puts track.title

end

=

**For Those About To Rock (We Salute You)**

**Put The Finger On You**

**Lets Get It Up**

**Inject The Venom**

**Snowballed**

**Evil Walks**

**C.O.D.**

**Breaking The Rules**

**Night Of The Long Knives**

**Spellbound**

**Go Down**

**Dog Eat Dog**

**Let There Be Rock**

**Bad Boy Boogie**

**Problem Child**

**Overdose**

**Hell Aint A Bad Place To Be**

**Whole Lotta Rosie**



10\. Affiche tous les titres des pistes de l'album "Let There Be Rock". 
Track.where(album: "Let There Be Rock")


11\. Calcule le prix total de cet album ("Let There Be Rock")

total\_price = 0

Track.where(album: "Let There Be Rock").each do |track|

&nbsp;	total\_price = total\_price + track.price

&nbsp;end

puts total\_price = **7.92**



12\. Calcule le coût total de l'intégralité de la discographie de "Deep Purple".

Track.where(artist: "Deep Purple").each do |album|

&nbsp;	total\_price2 = total\_price2 + album.price

&nbsp;end

puts total\_price2 = **2.97**



13\. Modifie tous les titres de "Eric Clapton" pour changer l'artiste en "Britney Spears".
Track.where(artist: "Eric Clapton").update(artist: "Britney Spears")



*Pas de boucle haha ! mais une one-line qui fonctionne !*

Track.where(artist: "Eric Clapton").count = **0**



