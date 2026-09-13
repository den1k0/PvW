execute as @s[y_rotation=-45..45] at @s run rotate @s 0 ~
execute as @s[y_rotation=45..135] at @s run rotate @s 90 ~
execute as @s[y_rotation=135..-135] at @s run rotate @s 180 ~
execute as @s[y_rotation=-135..-45] at @s run rotate @s -90 ~

execute as @s[x_rotation=-45..45] at @s run rotate @s ~ 0
execute as @s[x_rotation=45..90] at @s run rotate @s ~ 90
execute as @s[x_rotation=-90..-45] at @s run rotate @s ~ -90

execute as @s[y_rotation=0,x_rotation=-44..44] at @s align z run tp @s ~ ~ ~0.9875
execute as @s[y_rotation=90,x_rotation=-44..44] at @s align x run tp @s ~0.0125 ~ ~
execute as @s[y_rotation=180,x_rotation=-44..44] at @s align z run tp @s ~ ~ ~0.0125
execute as @s[y_rotation=-90,x_rotation=-44..44] at @s align x run tp @s ~0.9875 ~ ~

execute as @s[x_rotation=90] at @s align y run tp @s ~ ~0.0125 ~
execute as @s[x_rotation=-90] at @s align y run tp @s ~ ~0.9875 ~