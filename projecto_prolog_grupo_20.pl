
   												 



   												 					/*     PROJECTO DE ESTRUTURA DISCRETA 
   												 									GRUPO Nº 20 

   												 										INICIO           */

/* factos tipos de animais */

tipoanimal(passaro).
tipoanimal(peixe).
tipoanimal(mamifero).

/* factos tipos de peixes */

peixetipo(salmao,alfred).
peixetipo(tubarao,tutu).
peixetipo(_,nemo).


/* factos tipos de passaros */

passarotipo(canario,piupiu).
passarotipo(avestruz,xica).





/* factos tipos de mamiferos */

mamiferotipo(vaca,mimosa).
mamiferotipo(morcego,vamp).


/* factos nomes de animais */

nomevaca(mimosa).


nomemorcego(vamp).

nomecanario(piupiu).

nomeavestruz(xica).

nometubarao(tutu).


nomesalmao(alfred).

peixe(nemo).




/* factos cor de animais */

coranimal(piupiu,amarelo).

																	/*     REGRAS USADAS */
		/*     REGRAS  NOME DOS  SUB-TIPO DE ANIMAL  */


tipopassaro(X):-passarotipo(X,_).
tipomamifero(X):-mamiferotipo(X,_).
tipopeixe(X):-peixetipo(X,_).

				/*     REGRAS  NOME DE ANIMAL  */

nomepeixe(X):-peixetipo(_,X).
nomepassaro(X):-passarotipo(_,X).
nomemamifero(X):-mamiferotipo(_,X).
nomeanimal(X):-nomepeixe(X);nomepassaro(X);nomemamifero(X).


		/*     REGRAS  DA TEM PELE  */


tempelenomeanimal(X):-nomeanimal(X).
tipoanimaltempele(X):-tipoanimal(X).


	    /*     REGRAS  DOS ANIMAIS QUE TEM ASA  */



temasa(X):-nomemorcego(X);nomepassaro(X).
naotemasa(X):-nomevaca(X);nomepeixe(X).

	    /*     REGRAS  DOS ANIMAIS QUE VOA  */


podevoa(X):-nomemorcego(X);nomecanario(X).
naopodevoa(X):-nomevaca(X);nomeavestruz(X);nomepeixe(X).

		/*     REGRAS  DOS ANIMAIS QUE OVA  */


podeova(X):-nomesalmao(X);nomepassaro(X);peixe(X).
naopodeova(X):-nometubarao(X);nomemamifero(X).

		/*     REGRAS  DOS ANIMAIS QUE TEM BARBATANA  */


tembarbatana(X):-nomepeixe(X).
naotembarbatana(X):-nomepassaro(X);nomemamifero(X).

		/*     REGRAS  DOS ANIMAIS QUE NADAM  */


podenada(X):-tembarbatana(X).
naopodenada(X):-nomepassaro(X);nomemamifero(X).


		/*     REGRAS  DOS ANIMAIS QUE ANDAM  */

podeanda(X):-nomevaca(X);nomeavestruz(X).
naopodeanda(X):-nomecanario(X);nomemorcego(X);nomepeixe(X).

		/*     REGRAS  DA COR DOS ANIMAIS  */

cor(X):-coranimal(_,X).


temcor(X,Y):-coranimal(X,Y).

		/*     REGRAS  DOS ANIMAIS COMESTIVEIS  */


ecomido(X):-nomevaca(X);nomesalmao(X).
naoecomido(X):-nomemorcego(X);nomepassaro(X);nometubarao(X);peixe(X).

		/*     REGRAS  DOS ANIMAIS QUE DAO LEITE  */


daleite(X):-nomevaca(X).
naodaleite(X):-nomepassaro(X);nomepeixe(X);nomemorcego(X).





												                     /* FIM PROJECTO */

