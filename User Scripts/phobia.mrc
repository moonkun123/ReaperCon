; Created by TomCoyoteWilson of Geekshed IRC #iamaddictedtoirc
; for Pleasure only not for diagnosis of your neurosis
; Created on or about 11-15-2013 to 11-17-2013
; Have fun || Added a menu on the bot or user to turn off the 
; Trigger !phobia
menu channel,menubar {
  Phobia:
  .$iif($group(#phobia) == off,$style(3)) Off:.disable #phobia | echo -a 4 (#phobia)  OFF
  .$iif($group(#phobia) == on,$style(3)) On:.enable #phobia | echo -a 12 (#phobia) ON
}
#phobia on

on *:TEXT:!phobia*:#: {
  set %phobia.nick $nick
  set %2 $2
  if (fear isin %2) || ($len(%2) <= 3) || (%2 !isalpha) { halt }
  if (%2 == $null) { msg $nick sorry, can't help your phobia of talking to a bot | halt }
 
  phobiab %2
 
}
 
#phobia end
alias -l phobiab {
  window -De[2]k[0]m @Define
  .msg %phobia.nick 7  $read(scripts\phobia.txt,w, * $+ %2 $+ * ,0) 9 $readn
  .timer 1 4 phobiab2
  .set %n  $readn
  .inc %n
}
 
alias -l phobiab2 {
  window -De[2]k[0]m @Define
  :loop
  if (%n = 0) { halt }
  msg %phobia.nick 7  $read(scripts\phobia.txt,w, * $+ %2 $+ * ,%n) 9 $readn
  goto one
  :one
  .set %n  $readn
  .inc %n
  goto two
  :two
  if (%n > 2) {
    goto loop
  }
  else {
    unset %phobia.nick
    unset %n
    halt
  }
}
############
; command line
; Syntax /phobia <wordtosearchfor>
 
alias phobia {
  unset %n
  set %1 $1-
  window -De[2]k[0]m @Phobia
  echo @Phobia 7  $read(scripts\phobia.txt,w, * $+ %1 $+ * ,0) 9 $readn
  .timer 1 4 phobia2
  .set %n  $readn
  .inc %n
}
 
alias phobia2 {
  window -De[2]k[0]m @Phobia
  :loop
  if (%n = 0) { halt }
  if (%n > 0) {
    .inc %n
  }
  echo @Phobia 7  $read(scripts\phobia.txt,w, * $+ %1 $+ * ,%n) 9 $readn
  goto one
  :one
  .set %n  $readn
  .inc %n
  goto two
  :two
  if (%n > 2) {
    goto loop
  }
  else { halt }
}
 
; ##############
THis next part you cut to a text file in your scripts directory so this script can pick it up!!
; ##########################################################################################################################################################
 
[Ablutophobia] Fear of washing or bathing.
[Acarophobia] Fear of itching or of the insects that cause itching.
[Acerophobia] Fear of sourness.
[Achluophobia] Fear of darkness.
[Acousticophobia] Fear of noise.
[Acrophobia] Fear of heights.
[Aerophobia] Fear of drafts, air swallowing, or airbourne noxious substances.
[Aeroacrophobia] Fear of open high places.
[Aeronausiphobia] Fear of vomiting secondary to airsickness.
[Agateophobia] Fear of insanity.
[Agliophobia] Fear of pain.
[Agoraphobia] Fear of open spaces or of being in crowded, public places like markets. Fear of leaving a safe place.
[Agraphobia] Fear of sexual abuse.
[Agrizoophobia] Fear of wild animals.
[Agyrophobia] Fear of streets or crossing the street.
[Aichmophobia] Fear of needles or pointed objects.
[Ailurophobia] Fear of cats.
[Albuminurophobia] Fear of kidney disease.
[Alektorophobia] Fear of chickens.
[Algophobia] Fear of pain.
[Alliumphobia] Fear of garlic.
[Allodoxaphobia] Fear of opinions.
[Altophobia] Fear of heights.
[Amathophobia] Fear of dust.
[Amaxophobia] Fear of riding in a car.
[Ambulophobia] Fear of walking.
[Amnesiphobia] Fear of amnesia.
[Amychophobia] Fear of scratches or being scratched.
[Anablephobia] Fear of looking up.
[Ancraophobia] Fear of wind. (Anemophobia)
[Androphobia] Fear of men.
[Anemophobia] Fear of air drafts or wind.(Ancraophobia)
[Anginophobia] Fear of angina, choking or narrowness.
[Anglophobia] Fear of England or English culture, etc.
[Angrophobia ] Fear of anger or of becoming angry.
[Ankylophobia] Fear of immobility of a joint.
[Anthrophobia] Fear of flowers.
[Anthophobia] Fear of flowers.
[Anthropophobia] Fear of people or society.
[Antlophobia] Fear of floods.
[Anuptaphobia] Fear of staying single.
[Apeirophobia] Fear of infinity.
[Aphenphosmphobia] Fear of being touched.
[Apiphobia] Fear of bees.
[Apotemnophobia] Fear of persons with amputations.
[Arachibutyrophobia] Fear of peanut butter sticking to the roof of the mouth.
[Arachnephobia] Fear of spiders.
[Arachnophobia] Fear of spiders.
[Arithmophobia] Fear of numbers.
[Arrhenphobia] Fear of men.
[Arsonphobia] Fear of fire.
[Asthenophobia] Fear of fainting or weakness.
[Astraphobia] Fear of thunder and lightning.(Ceraunophobia, Keraunophobia)
[Astrapophobia] Fear of thunder and lightning.(Ceraunophobia, Keraunophobia)
[Astrophobia] Fear of stars or celestial space.
[Asymmetriphobia] Fear of asymmetrical things.
[Ataxiophobia] Fear of ataxia. (muscular incoordination)
[Ataxophobia] Fear of disorder or untidiness.
[Atelophobia] Fear of imperfection.
[Atephobia] Fear of ruin or ruins.
[Athazagoraphobia] Fear of being forgotton or ignored or forgetting.
[Atomosophobia] Fear of atomic explosions.
[Atychiphobia] Fear of failure.
[Aulophobia] Fear of flutes.
[Aurophobia] Fear of gold.
[Auroraphobia] Fear of Northern lights.
[Autodysomophobia] Fear of one that has a vile odor.
[Automatonophobia] Fear of ventriloquist's dummies, animatronic creatures, wax statues - anything that falsly represents a sentient being.
[Automysophobia] Fear of being dirty.
[Autophobia] Fear of being alone or of oneself.
[Aviophobia] Fear of flying. [Aviatophobia] Fear of flying.
[Bacillophobia] Fear of microbes.
[Bacteriophobia] Fear of bacteria.
[Ballistophobia] Fear of missiles or bullets.
[Bolshephobia] Fear of Bolsheviks.
[Barophobia] Fear of gravity.
[Basophobia] Inability to stand. Fear of walking or falling. [Basiphobia] Inability to stand. Fear of walking or falling.
[Bathmophobia] Fear of stairs or steep slopes.
[Bathophobia] Fear of depth.
[Batophobia] Fear of heights or being close to high buildings.
[Batrachophobia] Fear of amphibians, such as frogs, newts, salamanders, etc.
[Belonephobia] Fear of pins and needles. (Aichmophobia)
[Bibliophobia] Fear of books.
[Blennophobia] Fear of slime.
[Bogyphobia] Fear of bogeys or the bogeyman.
[Botanophobia] Fear of plants.
[Bromidrosiphobia] Fear of body smells. [Bromidrophobia] Fear of body smells.
[Brontophobia] Fear of thunder and lightning.
[Bufonophobia] Fear of toads.
[Cacophobia] Fear of ugliness.
[Cainophobia] Fear of newness, novelty.
[Cainotophobia] Fear of newness, novelty.
[Caligynephobia] Fear of beautiful women.
[Cancerophobia] Fear of cancer. [Carcinophobia] Fear of cancer.
[Cardiophobia] Fear of the heart.
[Carnophobia] Fear of meat.
[Catagelophobia] Fear of being ridiculed.
[Catapedaphobia] Fear of jumping from high and low places.
[Cathisophobia] Fear of sitting.
[Catoptrophobia] Fear of mirrors.
[Cenophobia] Fear of new things or ideas. [Centophobia] Fear of new things or ideas.
[Ceraunophobia] Fear of thunder and lightning.(Astraphobia, Astrapophobia) [Keraunophobia] Fear of thunder and lightning.(Astraphobia, Astrapophobia)
[Chaetophobia] Fear of hair.
[Cheimaphobia] Fear of cold.(Frigophobia, Psychophobia) [Cheimatophobia] Fear of cold.(Frigophobia, Psychophobia)
[Chemophobia] Fear of chemicals or working with chemicals.
[Cherophobia] Fear of gaiety.
[Chionophobia] Fear of snow.
[Chiraptophobia] Fear of being touched.
[Chirophobia] Fear of hands.
[Cholerophobia] Fear of anger or the fear of cholera.
[Chorophobia] Fear of dancing.
[Chrometophobia] Fear of money. [Chrematophobia] Fear of money.
[Chromophobia] Fear of colors. [Chromatophobia] Fear of colors.
[Chronophobia] Fear of time.
[Chronomentrophobia] Fear of clocks.
[Cibophobia] Fear of food.(Sitophobia, Sitiophobia)
[Claustrophobia] Fear of confined spaces.
[Cleithrophobia] Fear of being locked in an enclosed place.
[Cleisiophobia] Fear of being locked in an enclosed place.
[Cleptophobia] Fear of stealing.
[Climacophobia] Fear of stairs, climbing, or of falling downstairs.
[Clinophobia] Fear of going to bed.
[Cleithrophobia] Fear of being enclosed.
[Cnidophobia] Fear of stings.
[Cometophobia] Fear of comets.
[Coimetrophobia] Fear of cemeteries.
[Coitophobia] Fear of coitus.
[Contreltophobia] Fear of sexual abuse.
[Coprastasophobia] Fear of constipation.
[Coprophobia] Fear of feces.
[Consecotaleophobia] Fear of chopsticks.
[Coulrophobia] Fear of clowns.
[Counterphobia] The preference by a phobic for fearful situations.
[Cremnophobia] Fear of precipices.
[Cryophobia] Fear of extreme cold, ice or frost.
[Crystallophobia] Fear of crystals or glass.
[Cyberphobia] Fear of computers or working on a computer.
[Cyclophobia] Fear of bicycles.
[Cymophobia] Fear of waves or wave like motions.
[Kymophobia] Fear of waves or wave like motions.
[Cynophobia]  Fear of dogs or rabies.
[Cypridophobia] Fear of prostitutes or venereal disease.
[Cypriphobia] Fear of prostitutes or venereal disease. [Cyprianophobia] Fear of prostitutes or venereal disease. [Cyprinophobia] Fear of prostitutes or venereal disease.
[Decidophobia] Fear of making decisions.
[Defecaloesiophobia] Fear of painful bowels movements.
[Deipnophobia] Fear of dining or dinner conversations.
[Dementophobia] Fear of insanity.
[Demonophobia] Fear of demons. [Daemonophobia] Fear of demons.
[Demophobia] Fear of crowds. (Agoraphobia)
[Dendrophobia] Fear of trees.
[Dentophobia] Fear of dentists.
[Dermatophobia] Fear of skin lesions.
[Dermatosiophobia] Fear of skin disease. [Dermatophobia] Fear of skin disease. [Dermatopathophobia] Fear of skin disease.
[Dextrophobia] Fear of objects at the right side of the body.
[Diabetophobia] Fear of diabetes.
[Didaskaleinophobia] Fear of going to school.
[Dikephobia] Fear of justice.
[Dinophobia] Fear of dizziness or whirlpools.
[Diplophobia] Fear of double vision.
[Dipsophobia] Fear of drinking.
[Dishabiliophobia] Fear of undressing in front of someone.
[Domatophobia] Fear of houses or being in a house.(Eicophobia, Oikophobia)
[Doraphobia] Fear of fur or skins of animals.
[Doxophobia] Fear of expressing opinions or of receiving praise.
[Dromophobia] Fear of crossing streets.
[Dutchphobia] Fear of the Dutch.
[Dysmorphophobia] Fear of deformity.
[Dystychiphobia] Fear of accidents.
[Ecclesiophobia] Fear of church.
[Ecophobia] Fear of home. [Eicophobia] Fear of home surroundings.(Domatophobia, Oikophobia)
[Eisoptrophobia] Fear of mirrors or of seeing oneself in a mirror.
[Electrophobia] Fear of electricity.
[Eleutherophobia] Fear of freedom.
[Elurophobia] Fear of cats. (Ailurophobia)
[Emetophobia] Fear of vomiting.
[Enetophobia] Fear of pins.
[Enochlophobia] Fear of crowds.
[Enosiophobia] Fear of having committed an unpardonable sin or of criticism.[Enissophobia] Fear of having committed an unpardonable sin or of criticism.
[Entomophobia] Fear of insects.
[Eosophobia] Fear of dawn or daylight.
[Ephebiphobia] Fear of teenagers.
[Epistaxiophobia] Fear of nosebleeds.
[Epistemophobia] Fear of knowledge.
[Equinophobia] Fear of horses.
[Eremophobia] Fear of being oneself or of lonliness.
[Ereuthrophobia] Fear of blushing.
[Ergasiophobia] 1) Fear of work or functioning. 2) Surgeon's fear of operating.
[Ergophobia] Fear of work.
[Erotophobia] Fear of sexual love or sexual questions.
[Euphobia] Fear of hearing good news.
[Eurotophobia] Fear of female genitalia.
[Erythrophobia] 1) Fear of redlights. 2) Blushing. 3) Red. [Erytophobia] 1) Fear of redlights. 2) Blushing. 3) Red. [Ereuthophobia] 1) Fear of redlights. 2) Blushing. 3) Red.
[Febriphobia] Fear of fever. [Fibriphobia] Fear of fever. [Fibriophobia] Fear of fever.
[Felinophobia] Fear of cats. (Ailurophobia, Elurophobia, Galeophobia, Gatophobia)
[Francophobia] Fear of France or French culture. (Gallophobia, Galiophobia)
[Frigophobia] Fear of cold or cold things.(Cheimaphobia, Cheimatophobia, Psychrophobia)
[Galeophobia] Fear of cats. [Gatophobia] Fear of cats.
[Gallophobia] [Galiophobia] Fear France or French culture. (Francophobia)
[Gamophobia] Fear of marriage.
[Geliophobia] Fear of laughter.
[Geniophobia] Fear of chins.
[Genophobia] Fear of sex.
[Genuphobia] Fear of knees.
[Gephyrophobia] Fear of crossing bridges. [Gephydrophobia] Fear of crossing bridges.[Gephysrophobia] Fear of crossing bridges.
[Germanophobia] Fear of Germany or German culture.
[Gerascophobia] Fear of growing old.[Gerontophobia] Fear of old people or of growing old.
[Geumaphobia] Fear of taste. [Geumophobia] Fear of taste.
[Glossophobia] Fear of speaking in public or of trying to speak.
[Gnosiophobia] Fear of knowledge.
[Graphophobia] Fear of writing or handwriting.
[Gymnophobia] Fear of nudity.
[Gynephobia] Fear of women. [Gynophobia] Fear of women.
[Hadephobia] Fear of hell.
[Hagiophobia] Fear of saints or holy things.
[Hamartophobia] Fear of sinning.
[Haphephobia] Fear of being touched. [Haptephobia] Fear of being touched.
[Harpaxophobia] Fear of being robbed.
[Hedonophobia] Fear of feeling pleasure.
[Heliophobia] Fear of the sun.
[Hellenologophobia] Fear of Greek terms or complex scientific terminology.
[Helminthophobia] Fear of being infested with worms.
[Hemophobia] Fear of blood. [Hemaphobia] Fear of blood. [Hematophobia] Fear of blood.
[Heresyphobia] Fear of challenges to official doctrine or of radical deviation.[Hereiophobia] Fear of challenges to official doctrine or of radical deviation.
[Herpetophobia] Fear of reptiles or creepy, crawly things.
[Heterophobia] Fear of the opposite sex. (Sexophobia)
[Hexakosioihexekontahexaphobia] Fear of the number 666.
[Hierophobia] Fear of priests or sacred things.
[Hippophobia] Fear of horses.
[Hippopotomonstrosesquippedaliophobia] Fear of long words.
[Hobophobia] Fear of bums or beggars.
[Hodophobia] Fear of road travel.
[Hormephobia] Fear of shock.
[Homichlophobia] Fear of fog.
[Homilophobia] Fear of sermons.
[Hominophobia] Fear of men.
[Homophobia] Fear of sameness, monotony or of homosexuality or of becoming homosexual.
[Hoplophobia] Fear of firearms.
[Hydrargyophobia] Fear of mercurial medicines.
[Hydrophobia] Fear of water or of rabies.
[Hydrophobophobia] Fear of rabies.
[Hyelophobia] Fear of glass. [Hyalophobia] Fear of glass.
[Hygrophobia] Fear of liquids, dampness, or moisture.
[Hylephobia] Fear of materialism or the fear of epilepsy.
[Hylophobia] Fear of forests.
[Hypengyophobia] Fear of responsibility. [Hypegiaphobia] Fear of responsibility.
[Hypnophobia] Fear of sleep or of being hypnotized.
[Hypsiphobia] Fear of height.
[Iatrophobia] Fear of going to the doctor or of doctors.
[Ichthyophobia] Fear of fish.
[Ideophobia] Fear of ideas.
[Illyngophobia] Fear of vertigo or feeling dizzy when looking down.
[Iophobia] Fear of poison.
[Insectophobia] Fear of insects.
[Isolophobia] Fear of solitude, being alone.
[Isopterophobia] Fear of termites, insects that eat wood.
[Ithyphallophobia] Fear of seeing, thinking about or having an erect p%&@#.
[Japanophobia] Fear of Japanese.
[Judeophobia] Fear of Jews.
[Kainolophobia] Fear of anything new, novelty.
[Kainophobia] Fear of anything new, novelty.
[Kakorrhaphiophobia] Fear of failure or defeat.
[Katagelophobia] Fear of ridicule.
[Kathisophobia] Fear of sitting down.
[Kenophobia] Fear of voids or empty spaces.
[Keraunophobia] Fear of thunder and lightning.(Astraphobia, Astrapophobia) [Ceraunophobia] Fear of thunder and lightning.(Astraphobia, Astrapophobia)
[Kinetophobia] Fear of movement or motion. [Kinesophobia] Fear of movement or motion.
[Kleptophobia] Fear of stealing.
[Koinoniphobia] Fear of rooms.
[Kolpophobia] Fear of genitals, particularly female.
[Kopophobia] Fear of fatigue.
[Koniophobia] Fear of dust. (Amathophobia)
[Kosmikophobia] Fear of cosmic phenomenon.
[Kymophobia] Fear of waves. (Cymophobia)
[Kynophobia] Fear of rabies.
[Kyphophobia] Fear of stooping.
[Lachanophobia] Fear of vegetables.
[Laliophobia] Fear of speaking. [Lalophobia] Fear of speaking.
[Leprophobia] Fear of leprosy [Lepraphobia] Fear of leprosy.
[Leukophobia] Fear of the color white.
[Levophobia] Fear of things to the left side of the body.
[Ligyrophobia] Fear of loud noises.
[Lilapsophobia] Fear of tornadoes and hurricanes.
[Limnophobia] Fear of lakes.
[Linonophobia] Fear of string.
[Liticaphobia] Fear of lawsuits.
[Lockiophobia] Fear of childbirth.
[Logizomechanophobia] Fear of computers.
[Logophobia] Fear of words.
[Luiphobia] Fear of lues, syphillis.
[Lutraphobia] Fear of otters.
[Lygophobia] Fear of darkness.
[Lyssophobia] Fear of rabies or of becoming mad.
[Macrophobia] Fear of long waits.
[Mageirocophobia] Fear of cooking.
[Maieusiophobia] Fear of childbirth.
[Malaxophobia] Fear of love play. (Sarmassophobia)
[Maniaphobia] Fear of insanity.
[Mastigophobia] Fear of punishment.
[Mechanophobia] Fear of machines.
[Medomalacuphobia] Fear of losing an erection.
[Medorthophobia] Fear of an erect penis.
[Megalophobia] Fear of large things.
[Melissophobia] Fear of bees.
[Melanophobia] Fear of the color black.
[Melophobia] Fear or hatred of music.
[Meningitophobia] Fear of brain disease.
[Menophobia] Fear of menstruation.
[Merinthophobia] Fear of being bound or tied up.
[Metallophobia] Fear of metal.
[Metathesiophobia] Fear of changes.
[Meteorophobia] Fear of meteors.
[Methyphobia] Fear of alcohol.
[Metrophobia] Fear or hatred of poetry.
[Microbiophobia] Fear of microbes. (Bacillophobia)
[Microphobia] Fear of small things.
[Misophobia] Fear of being contaminated with dirt or germs. [Mysophobia] Fear of being contaminated with dirt or germs.
[Mnemophobia] Fear of memories.
[Molysmophobia] Fear of dirt or contamination. [Molysomophobia] Fear of dirt or contamination.
[Monophobia] Fear of solitude or being alone.
[Monopathophobia] Fear of definite disease.
[Motorphobia] Fear of automobiles.
[Mottephobia] Fear of moths.
[Musophobia] Fear of mice. [Muriphobia] Fear of mice.
[Mycophobia] Fear or aversion to mushrooms.
[Mycrophobia] Fear of small things.
[Myctophobia] Fear of darkness.
[Myrmecophobia] Fear of ants.
[Mythophobia] Fear of myths or stories or false statements.
[Myxophobia] Fear of slime. (Blennophobia)
[Nebulaphobia] Fear of fog. (Homichlophobia)
[Necrophobia] Fear of death or dead things.
[Nelophobia] Fear of glass.
[Neopharmaphobia] Fear of new drugs.
[Neophobia] Fear of anything new.
[Nephophobia] Fear of clouds.
[Noctiphobia] Fear of the night.
[Nomatophobia] Fear of names.
[Nosocomephobia] Fear of hospitals.
[Nosophobia] Fear of becoming ill. [Nosemaphobia] Fear of becoming ill.
[Nostophobia] Fear of returning home.
[Novercaphobia] Fear of your step-mother.
[Nucleomituphobia] Fear of nuclear weapons.
[Nudophobia] Fear of nudity.
[Numerophobia] Fear of numbers.
[Nyctohylophobia] Fear of dark wooded areas or of forests at night
[Nyctophobia] Fear of the dark or of night.
[Obesophobia] Fear of gaining weight.(Pocrescophobia)
[Ochlophobia] Fear of crowds or mobs.
[Ochophobia] Fear of vehicles.
[Octophobia] Fear of the figure 8.
[Odontophobia] Fear of teeth or dental surgery.
[Odynophobia] Fear of pain. (Algophobia) [Odynephobia] Fear of pain. (Algophobia)
[Oenophobia] Fear of wines.
[Oikophobia] Fear of home surroundings, house.(Domatophobia, Eicophobia)
[Olfactophobia] Fear of smells.
[Ombrophobia] Fear of rain or of being rained on.
[Ommetaphobia] Fear of eyes. [Ommatophobia] Fear of eyes.
[Oneirophobia] Fear of dreams.
[Oneirogmophobia] Fear of wet dreams.
[Onomatophobia] Fear of hearing a certain word or of names.
[Ophidiophobia] Fear of snakes. (Snakephobia)
[Ophthalmophobia] Fear of being stared at.
[Opiophobia] Fear medical doctors experience of prescribing needed pain medications for patients.
[Optophobia] Fear of opening one's eyes.
[Ornithophobia] Fear of birds.
[Orthophobia] Fear of property.
[Osmophobia] Fear of smells or odors. [Osphresiophobia] Fear of smells or odors.
[Ostraconophobia] Fear of shellfish.
[Ouranophobia] Fear of heaven.
[Uranophobia] Fear of heaven.
[Pagophobia] Fear of ice or frost.
[Panthophobia] Fear of suffering and disease.
[Panophobia] Fear of everything. [Pantophobia] Fear of everything.
[Papaphobia] Fear of the Pope.
[Papyrophobia] Fear of paper.
[Paralipophobia] Fear of neglecting duty or responsibility.
[Paraphobia] Fear of sexual perversion.
[Parasitophobia] Fear of parasites.
[Paraskavedekatriaphobia] Fear of Friday the 13th.
[Parthenophobia] Fear of virgins or young girls.
[Pathophobia] Fear of disease.
[Patroiophobia] Fear of heredity.
[Parturiphobia] Fear of childbirth.
[Peccatophobia] Fear of sinning or imaginary crimes.
[Pediculophobia] Fear of lice.
[Pediophobia] Fear of dolls.
[Pedophobia] Fear of children.
[Peladophobia] Fear of bald people.
[Pellagrophobia] Fear of pellagra.
[Peniaphobia] Fear of poverty.
[Pentheraphobia] Fear of mother-in-law. (Novercaphobia)
[Phagophobia] Fear of swallowing or of eating or of being eaten.
[Phalacrophobia] Fear of becoming bald.
[Phallophobia] Fear of a penis, esp erect.
[Pharmacophobia] Fear of taking medicine.
[Phasmophobia] Fear of ghosts.
[Phengophobia] Fear of daylight or sunshine.
[Philemaphobia] Fear of kissing.
[Philematophobia] Fear of kissing.
[Philophobia] Fear of falling in love or being in love.
[Philosophobia] Fear of philosophy.
[Phobophobia] Fear of phobias.
[Photoaugliaphobia] Fear of glaring lights.
[Photophobia] Fear of light.
[Phonophobia] Fear of noises or voices or one's own voice; of telephones.
[Phronemophobia] Fear of thinking.
[Phthiriophobia] Fear of lice. (Pediculophobia)
[Phthisiophobia] Fear of tuberculosis.
[Placophobia] Fear of tombstones.
[Plutophobia] Fear of wealth.
[Pluviophobia] Fear of rain or of being rained on.
[Pneumatiphobia] Fear of spirits.
[Pnigophobia] Fear of choking or being smothered. [Pnigerophobia] Fear of choking or being smothered.
[Pocrescophobia] Fear of gaining weight. (Obesophobia)
[Pogonophobia] Fear of beards.
[Poliosophobia] Fear of contracting poliomyelitis.
[Politicophobia] Fear or abnormal dislike of politicians.
[Polyphobia] Fear of many things.
[Poinephobia] Fear of punishment.
[Ponophobia] Fear of overworking or of pain.
[Porphyrophobia] Fear of the color purple.
[Potamophobia] Fear of rivers or running water.
[Potophobia] Fear of alcohol.
[Pharmacophobia] Fear of drugs.
[Proctophobia] Fear of rectums.
[Prosophobia] Fear of progress.
[Psellismophobia] Fear of stuttering.
[Psychophobia] Fear of mind.
[Psychrophobia] Fear of cold.
[Pteromerhanophobia] Fear of flying.
[Pteronophobia] Fear of being tickled by feathers.
[Pupaphobia] Fear of puppets.
[Pyrexiophobia] Fear of Fever.
[Pyrophobia] Fear of fire.
[Radiophobia] Fear of radiation, x-rays.
[Ranidaphobia] Fear of frogs.
[Rectophobia] Fear of rectum or rectal diseases.
[Rhabdophobia] Fear of being severely punished or beaten by a rod, or of being severely criticized. Also fear of magic.(wand)
[Rhypophobia] Fear of defecation.
[Rhytiphobia] Fear of getting wrinkles.
[Rupophobia] Fear of dirt.
[Russophobia] Fear of Russians.
[Samhainophobia] Fear of Halloween.
[Sarmassophobia] Fear of love play. (Malaxophobia)
[Satanophobia] Fear of Satan.
[Scabiophobia] Fear of scabies.
[Scatophobia] Fear of fecal matter.
[Scelerophibia] Fear of bad men, burglars.
[Sciophobia] Fear of shadows. [Sciaphobia] Fear of shadows.
[Scoleciphobia] Fear of worms.
[Scolionophobia] Fear of school.
[Scopophobia] Fear of being seen or stared at. [Scoptophobia] Fear of being seen or stared at.
[Scotomaphobia] Fear of blindness in visual field.
[Scotophobia] Fear of darkness. (Achluophobia)
[Scriptophobia] Fear of writing in public.
[Selachophobia] Fear of sharks.
[Selaphobia] Fear of light flashes.
[Selenophobia] Fear of the moon.
[Seplophobia] Fear of decaying matter.
[Sesquipedalophobia] Fear of long words.
[Sexophobia] Fear of the opposite sex. (Heterophobia)
[Siderodromophobia] Fear of trains, railroads or train travel.
[Siderophobia] Fear of stars.
[Sinistrophobia] Fear of things to the left or left-handed.
[Sinophobia] Fear of Chinese, Chinese culture.
[Sitophobia] Fear of food or eating. (Cibophobia) [Sitiophobia] Fear of food or eating. (Cibophobia)
[Snakephobia] Fear of snakes. (Ophidiophobia)
[Soceraphobia] Fear of parents-in-law.
[Social Phobia] Fear of being evaluated negatively in social situations.
[Sociophobia] Fear of society or people in general.
[Somniphobia] Fear of sleep.
[Sophophobia] Fear of learning.
[Soteriophobia] Fear of dependence on others.
[Spacephobia] Fear of outer space.
[Spectrophobia] Fear of specters or ghosts.
[Spermatophobia] Fear of germs. [Spermophobia] Fear of germs.
[Spheksophobia] Fear of wasps.
[Stasibasiphobia] Fear of standing or walking. (Ambulophobia) [Stasiphobia] Fear of standing or walking. (Ambulophobia)
[Staurophobia] Fear of crosses or the crucifix.
[Stenophobia] Fear of narrow things or places.
[Stygiophobia] Fear of hell. [Stigiophobia] Fear of hell.
[Suriphobia] Fear of mice.
[Symbolophobia] Fear of symbolism.
[Symmetrophobia] Fear of symmetry.
[Syngenesophobia] Fear of relatives.
[Syphilophobia] Fear of syphilis.
[Tachophobia] Fear of speed.
[Taeniophobia] Fear of tapeworms. [Teniophobia] Fear of tapeworms.
[Taphephobia] Fear of being buried alive or of cemeteries. [Taphophobia] Fear of being buried alive or of cemeteries.
[Tapinophobia] Fear of being contagious.
[Taurophobia] Fear of bulls.
[Technophobia] Fear of technology.
[Teleophobia] 1) Fear of definite plans. 2) Religious ceremony.
[Telephonophobia] Fear of telephones.
[Teratophobia] Fear of bearing a deformed child or fear of monsters or deformed people.
[Testophobia] Fear of taking tests.
[Tetanophobia] Fear of lockjaw, tetanus.
[Teutophobia] Fear of German or German things.
[Textophobia] Fear of certain fabrics.
[Thaasophobia] Fear of sitting.
[Thalassophobia] Fear of the sea.
[Thanatophobia] Fear of death or dying. [Thantophobia] Fear of death or dying.
[Theatrophobia] Fear of theatres.
[Theologicophobia] Fear of theology.
[Theophobia] Fear of gods or religion.
[Thermophobia] Fear of heat.
[Tocophobia] Fear of pregnancy or childbirth.
[Tomophobia] Fear of surgical operations.
[Tonitrophobia] Fear of thunder.
[Topophobia] Fear of certain places or situations, such as stage fright.
[Toxiphobia] Fear of poison or of being accidently poisoned. [Toxophobia] Fear of poison or of being accidently poisoned. [Toxicophobia] Fear of poison or of being accidently poisoned.
[Traumatophobia] Fear of injury.
[Tremophobia] Fear of trembling.
[Trichinophobia] Fear of trichinosis.
[Trichopathophobia] Fear of hair. (Chaetophobia, Hypertrichophobia) [Trichophobia] Fear of hair. (Chaetophobia, Hypertrichophobia)
[Triskaidekaphobia] Fear of the number 13.
[Tropophobia] Fear of moving or making changes.
[Trypanophobia] Fear of injections.
[Tuberculophobia] Fear of tuberculosis.
[Tyrannophobia] Fear of tyrants.
[Uranophobia] Fear of heaven. [Ouranophobia] Fear of heaven.
[Urophobia] Fear of urine or urinating.
[Vaccinophobia] Fear of vaccination.
[Venustraphobia] Fear of beautiful women.
[Verbophobia] Fear of words.
[Verminophobia] Fear of germs.
[Vestiphobia] Fear of clothing.
[Virginitiphobia] Fear of rape.
[Vitricophobia] Fear of step-father.
[Walloonphobia] Fear of the Walloons.
[Wiccaphobia] Fear of witches and witchcraft.
[Xanthophobia] Fear of the color yellow or the word yellow.
[Xenoglossophobia] Fear of foreign languages.
[Xenophobia] Fear of strangers or foreigners.
[Xerophobia] Fear of dryness.
[Xylophobia] 1) Fear of wooden objects. 2) Forests.
[Xyrophobia] Fear of razors.
[Zelophobia] Fear of jealousy.
[Zeusophobia] Fear of God or gods.
[Zemmiphobia] Fear of the great mole rat.
[Zoophobia] Fear of animals.
