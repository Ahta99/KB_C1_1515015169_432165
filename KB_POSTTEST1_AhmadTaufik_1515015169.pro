
predicates
  orang(symbol) - nondeterm (o)
  makanan(symbol) - nondeterm (o)
  aman(symbol) - nondeterm (i)
  lapar(symbol) - nondeterm (i)
  uang(long) -nondeterm(o)
  harganya(symbol,long) -nondeterm(i,o) nondeterm(i,i)
  belimakan(symbol,symbol,long,long) - nondeterm (o,o,o,o) nondeterm (o,o,i,o)

clauses

  orang(ahmad).
  orang(taufik).

  	makanan(nasigoreng).
  	makanan(fitsahats).
  	makanan(baksoboraks).
  	makanan(nasicampur).
  	makanan(roti).
  	
  		aman(baksoboraks).
  		aman(fitsahats).
  		aman(nasicampur).
  		aman(roti).

  	lapar(taufik).
  	
  			harganya(nasigoreng,12000).
  			harganya(fitsahats,45000).
  			harganya(baksoboraks,10000).
  			harganya(roti,20000).
  			harganya(nasicampur,12000).
  
  	uang(20000).
  	
belimakan(O,M,H,B):-orang(O),makanan(M),aman(M),lapar(O),uang(B),harganya(M,H).

goal
  belimakan(Nama,  Menu,  Harga,  Budget),Harga <=Budget.
