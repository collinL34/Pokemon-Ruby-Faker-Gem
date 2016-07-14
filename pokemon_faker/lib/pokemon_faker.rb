# require "pokemon_faker/version"

class PokemonFaker
  @@names = ["Bulbasaur", "Ivysaur", "Venusaur", "Charmander", "Charmeleon", "Charizard", "Squirtle", "Wartortle", "Blastoise", "Caterpie", "Metapod", "Butterfree", "Weedle", "Kakuna", "Beedrill", "Pidgey", "Pidgeotto", "Pidgeot", "Rattata", "Raticate", "Spearow", "Fearow", "Ekans", "Arbok", "Pikachu", "Raichu", "Sandshrew", "Sandslash", "Nidoran", "Nidorina", "Nidoqueen", "Nidoran", "Nidorino", "Nidoking", "Clefairy", "Clefable", "Vulpix", "Ninetales", "Jigglypuff", "Wigglytuff", "Zubat", "Golbat", "Oddish", "Gloom", "Vileplume", "Paras", "Parasect", "Venonat", "Venomoth", "Diglett", "Dugtrio", "Meowth", "Persian", "Psyduck", "Golduck", "Mankey", "Primeape", "Growlithe", "Arcanine", "Poliwag", "Poliwhirl", "Poliwrath", "Abra", "Kadabra", "Alakazam", "Machop", "Machoke", "Machamp", "Bellsprout", "Weepinbell", "Victreebel", "Tentacool", "Tentacruel", "Geodude", "Graveler", "Golem", "Ponyta", "Rapidash", "Slowpoke", "Slowbro", "Magnemite", "Magneton", "Farfetch'd", "Doduo", "Dodrio", "Seel", "Dewgong", "Grimer", "Muk", "Shellder", "Cloyster", "Gastly", "Haunter", "Gengar", "Onix", "Drowzee", "Hypno", "Krabby", "Kingler", "Voltorb", "Electrode", "Exeggcute", "Exeggutor", "Cubone", "Marowak", "Hitmonlee", "Hitmonchan", "Lickitung", "Koffing", "Weezing", "Rhyhorn", "Rhydon", "Chansey", "Tangela", "Kangaskhan", "Horsea", "Seadra", "Goldeen", "Seaking", "Staryu", "Starmie", "Mr.", "Scyther", "Jynx", "Electabuzz", "Magmar", "Pinsir", "Tauros", "Magikarp", "Gyarados", "Lapras", "Ditto", "Eevee", "Vaporeon", "Jolteon", "Flareon", "Porygon", "Omanyte", "Omastar", "Kabuto", "Kabutops", "Aerodactyl", "Snorlax", "Articuno", "Zapdos", "Moltres", "Dratini", "Dragonair", "Dragonite", "Mewtwo"]

  @@pictures = ["http://static.giantbomb.com/uploads/scale_small/13/135472/1891758-001bulbasaur.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891759-002ivysaur.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891760-003venusaur.png", "http://static.giantbomb.com/uploads/scale_small/0/6087/2438704-1202149925_t.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891762-005charmeleon.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891763-006charizard.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891764-007squirtle.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891809-008wartortle.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891810-009blastoise.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892132-010caterpie.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1895815-011metapod.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892298-012butterfree.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891817-013weedle.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891818-014kakuna.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891819-015beedrill.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891631-016pidgey.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891820-017pidgeotto.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891821-018pidgeot.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898244-019rattata.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898245-020raticate.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898246-021spearow.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898247-022fearow.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898239-023ekans.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1895870-024arbok.png", "http://static.giantbomb.com/uploads/scale_small/0/6087/2437349-pikachu.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898248-026raichu.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891822-027sandshrew.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891682-028sandslash.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898252-029nidoran.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898253-030nidorina.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898254-031nidoqueen.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898249-032nidoran.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898250-033nidorino.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898251-034nidoking.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898255-035clefairy.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898256-036clefable.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891638-037vulpix.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891823-038ninetales.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892299-039jigglypuff.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891680-040wigglytuff.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891824-041zubat.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891826-042golbat.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891711-043oddish.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898257-044gloom.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898258-045vileplume.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898259-046paras.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898260-047parasect.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892300-048venonat.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892301-049venomoth.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892133-050diglett.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1894634-051dugtrio.png", "http://static.giantbomb.com/uploads/scale_small/2/26507/948297-meowth.jpg", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898262-053persian.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892134-054psyduck.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892302-055golduck.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892135-056mankey.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892055-057primeape.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891827-058growlithe.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891828-059arcanine.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891829-060poliwag.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891830-061poliwhirl.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891831-062poliwrath.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891834-063abra.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891835-064kadabra.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891836-065alakazam.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892303-066machop.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892304-067machoke.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892305-068machamp.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898263-069bellsprout.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898264-070weepinbell.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898265-071victreebel.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892306-072tentacool.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892307-073tentacruel.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898243-074geodude.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898242-075graveler.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892308-076golem.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892309-077ponyta.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892310-078rapidash.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892136-079slowpoke.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892311-080slowbro.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892312-081magnemite.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892313-082magneton.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891838-083farfetch_d.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892314-084doduo.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892315-085dodrio.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892316-086seel.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892317-087dewgong.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898266-088grimer.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892056-089muk.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892137-090shellder.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892318-091cloyster.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891839-092gastly.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891840-093haunter.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891841-094gengar.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891842-095onix.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898267-096drowzee.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898268-097hypno.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891843-098krabby.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891844-099kingler.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892678-100voltorb.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892679-101electrode.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898269-102exeggcute.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898270-103exeggutor.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891845-104cubone.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891846-105marowak.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892680-106hitmonlee.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892681-107hitmonchan.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898271-108lickitung.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892138-109koffing.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898274-110weezing.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892682-111rhyhorn.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892683-112rhydon.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892684-113chansey.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898275-114tangela.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898276-115kangaskhan.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891847-116horsea.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891849-117seadra.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898280-118goldeen.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898282-119seaking.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892685-120staryu.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892686-121starmie.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898289-122mr._mime.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891850-123scyther.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898290-124jynx.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892687-125electabuzz.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1895802-126magmar.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891851-127pinsir.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891852-128tauros.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898291-129magikarp.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891635-130gyarados.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891870-131lapras.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891871-132ditto.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891681-133eevee.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891872-134vaporeon.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891873-135jolteon.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891874-136flareon.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1898292-137porygon.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892688-138omanyte.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892689-139omastar.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891959-140kabuto.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891960-141kabutops.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891961-142aerodactyl.png", "http://static.giantbomb.com/uploads/scale_small/0/4986/406919-143snorlax.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892690-144articuno.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892691-145zapdos.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891710-146moltres.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1910790-147dratini_ag_anime.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1891876-148dragonair.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1892692-149dragonite.png", "http://static.giantbomb.com/uploads/scale_small/13/135472/1895869-150mewtwo.png"]

  def self.name
    return @@names.sample
  end

  def self.picture
    return @@pictures.sample
  end

  def self.match
    index = rand(0..149)

    return [@@names[index], @@pictures[index]]
  end
end

# p PokemonFaker.name
# p PokemonFaker.picture
# p PokemonFaker.match

# 3.times do 
#   p_name = PokemonFaker.match
#   Pokemon.new(name: p_name[0] image: p_name[1])
# end

