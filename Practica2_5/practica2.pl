instancia_de(zeldaTotk,zelda).
instancia_de(pokemonHGSS,pokemon).
instancia_de(amd, procesador).
instancia_de(intel, procesador).
instancia_de(m, clasificacion).
instancia_de(t, clasificacion).
instancia_de(e, clasificacion).
instancia_de(android, so).
instancia_de(ios, so).

subclase_de(movil, plataforma).
subclase_de(pc, plataforma).
subclase_de(consola, plataforma).
subclase_de(nintendo_switch, consola).
subclase_de(ps5, consola).
subclase_de(xboxsx, consola).
subclase_de(rpg, genero).
subclase_de(aventura, genero).

tiene_propiedad(movil, tiene, so).
tiene_propiedad(pc, tiene, procesador).
tiene_propiedad(link, tiene, espada_maestra).
tiene_propiedad(link, tiene, trifuerza_valor).
tiene_propiedad(link, es_personaje_de, zelda).
tiene_propiedad(pokemon, se_juega_en, nintendo_switch).
tiene_propiedad(zelda, se_juega_en, nintendo_switch).
tiene_propiedad(pokemon, desarrollada_por, gameFreak).
tiene_propiedad(bloodborne, se_juega_en, ps5).
tiene_propiedad(bloodborne, desarrollada_por, fromsoftware).
tiene_propiedad(god_of_war, se_juega_en, ps5).
tiene_propiedad(god_of_war, desarrollada_por, santa_monica_studio).
tiene_propiedad(halo, se_juega_en, xboxsx).
tiene_propiedad(gears_of_war, se_juega_en, xboxsx).
tiene_propiedad(dualsense, tiene, ps5).
tiene_propiedad(joycons, tiene, nintendo_switch).
tiene_propiedad(videojuegos, tiene, clasificacion).
tiene_propiedad(videojuegos, tiene, genero).
tiene_propiedad(videojuegos, se_juega_en, plataforma).


es(Clase, Obj):-instancia_de(Obj, Clase).
es(Clase, Obj):-instancia_de(Obj, Clasep),
                es_sub(Clasep, Clase).


propiedades(Obj,Prop):-es(Clase,Obj),
                     tiene_propiedad(Clase,Propiedad,Clase2),
                     Prop =.. [Propiedad, Clase2].

es_sub(C1, C2):-subclase_de(C1,C2).
es_sub(C1, C2):-subclase_de(C1,C3),
        es_sub(C3,C2).