
domains
menu = symbol
porsi,harga = integer

predicates
nondeterm pesan(menu,porsi,harga)
nondeterm pesan(menu)

clauses
 pesan(Makanan):-
 	pesan(Makanan,_,_).
 pesan(nasi_goreng,7000,1).
 pesan(mie_goreng,10000,2).
 pesan(bakso,8000,1).
 
 goal
 pesan(Makanan,Harga,_), Harga=7000.