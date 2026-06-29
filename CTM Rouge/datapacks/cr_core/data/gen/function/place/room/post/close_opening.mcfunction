scoreboard players reset #need_blocking calculator.cr
execute unless data storage run: rm{pos_x:true} run fill ~32 ~13 ~12 ~32 ~22 ~19 bedrock
execute unless data storage run: rm{neg_x:true} run fill ~-1 ~13 ~12 ~-1 ~22 ~19 bedrock
execute unless data storage run: rm{pos_z:true} run fill ~12 ~13 ~32 ~19 ~22 ~32 bedrock
execute unless data storage run: rm{neg_z:true} run fill ~12 ~13 ~-1 ~19 ~22 ~-1 bedrock