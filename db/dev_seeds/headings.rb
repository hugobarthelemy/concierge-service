section "Creating Headings" do
  [["accompagnement personnel (achats, médecin, etc)", "001"],
   ["achats (à partir liste d' achats)", "033"],
   ["achats par internet  (chez l'adhérent)", "018"],
   ["aide à la cuisine", "028"],
   ["aide lessive", "020"],
   ["arrosage plantes", "021"],
   ["assistance mail", "004"],
   ["balade pédestre", "022"],
   ["cartouche imprimante changement", "006"],
   ["changer les plombs", "036"],
   ["changer les rideaux", "037"],
   ["changer une ampoule électrique", "034"],
   ["changer une prise électrique", "038"],
   ["covoiturage (fête, spectacle, etc ...)", "003"],
   ["déclaration impôts", "007"],
   ["dépannage simple téléviseur", "035"],
   ["dépôt bouteilles conteneurs", "005"],
   ["garde exceptionnelle enfants", "010"],
   ["interprète (anglais)", "032"],
   ["lecture au domicile", "011"],
   ["nourriture animaux domestiques", "012"],
   ["ouverture boîte de conserve", "030"],
   ["peinture volets", "013"],
   ["petit dépannage domestique", "014"],
   ["pose tringle à rideaux", "015"],
   ["prise  de rendez vous", "025"],
   ["ramassage bois"],
   ["rédaction courrier", "009"],
   ["tonte pelouse", "019"],
   ["transport déchets verts déchetterie", "016"],
   ["travaux de couture", "029"],
   ["utilisation smartphone téléphone", "017"],
   ["visite de courtoisie (en ville, foyer, EPHAD)", "026"]].each do |heading|
    title = heading.first
    human_id = heading.size == 2 ? heading.last : nil
    Heading.create(title: title, human_id: human_id)
  end
end
