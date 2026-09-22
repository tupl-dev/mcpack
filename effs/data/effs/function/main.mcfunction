schedule function effs:main 30s
effect give @a[gamemode=survival] minecraft:glowing infinite 0 true
effect give @a[gamemode=creative] minecraft:glowing infinite 0 true

effect clear @a[gamemode=creative] minecraft:night_vision
effect clear @a[gamemode=spectator] minecraft:night_vision
effect give @a[gamemode=creative] minecraft:night_vision 60 0 true
effect give @a[gamemode=spectator] minecraft:night_vision 60 0 true
