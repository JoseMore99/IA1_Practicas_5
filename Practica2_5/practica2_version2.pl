instancia_de(switch_lite, switch).
instancia_de(switch_oled, switch).
instancia_de(wii_mini, wii).
instancia_de(wii_family, wii).
instancia_de(nintendo_3ds_xl, nintendo_3ds).
instancia_de(new_2ds, nintendo_3ds).
instancia_de(ps4, playStation).
instancia_de(ps5, playStation).
instancia_de(xboxsx, xbox).
instancia_de(laptop, pc).
instancia_de(ios, movil).
instancia_de(android, movil).

subclase_de(movil, plataforma).
subclase_de(pc, plataforma).
subclase_de(consola, plataforma).
subclase_de(nintendo, consola).
subclase_de(switch, nintendo).
subclase_de(wii, nintendo).
subclase_de(nintendo_3ds, nintendo).
subclase_de(playStation, consola).
subclase_de(xbox, consola).

tiene_propiedad(movil, tiene, genshin_impact).
tiene_propiedad(pc, tiene, genshin_impact).
tiene_propiedad(pc, tiene, procesador).
tiene_propiedad(pc, tiene, age_of_empire).
tiene_propiedad(nintendo, tiene, pokemon).
tiene_propiedad(nintendo, tiene, zelda).
tiene_propiedad(playStation, tiene, bloodborne).
tiene_propiedad(playStation, tiene, god_of_war).
tiene_propiedad(ps4, se_juega_con, dualShock).
tiene_propiedad(ps5, se_juega_con, dualsense).
tiene_propiedad(xbox, tiene, halo).
tiene_propiedad(nintendo_3ds, es, solo_portatil).
tiene_propiedad(nintendo_3ds, tiene, graficos_3d).
tiene_propiedad(new_2ds, no_tiene, graficos_3d).
tiene_propiedad(wii, se_juega_con, nunchuk).
tiene_propiedad(wii, se_juega_con, wii_remote).
tiene_propiedad(wii_family, es_compatible_con, gamecube_games).
tiene_propiedad(switch, se_juega_con, joycons).
tiene_propiedad(switch_oled, portabilidad_es, opcional).
tiene_propiedad(switch_lite, portabilidad_es, solo_portatil).

incompatible(tiene(X), no_tiene(X)).

es(Clase, Obj):-instancia_de(Obj, Clase).
es(Clase, Obj):-instancia_de(Obj, Clasep),
                es_sub(Clasep, Clase).

propiedades(Obj,Prop):-tiene_propiedad(Obj,Propiedad,Clase),
                        Prop =.. [Propiedad, Clase].
propiedades(Obj,Prop):-es(Clase,Obj),
                     tiene_propiedad(Clase,Propiedad,Clase2),
                     Prop =.. [Propiedad, Clase2].

es_sub(C1, C2):-subclase_de(C1,C2).
es_sub(C1, C2):-subclase_de(C1,C3),
        es_sub(C3,C2).