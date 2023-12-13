(* Exercices *)

(* Écrire une fonction qui renvoie la somme des n premiers entiers. *)
let rec somme = function
  | 0 -> 0
  | n -> n + somme (n-1)
;;


(* Écrire une fonction qui donne le plus grand commun diviseur entre deux nombres. *)
let rec pgcd a b = match (a, b) with 
  | (m, 0) -> m
  | (m, n) -> pgcd n (m mod n)
;;

(* Écrire une fonction qui prend en entrée un entier représentant une année et qui renvoie true si cette année est bissextile, false sinon. *)
let bissextile annee = 
  (annee mod 400 = 0) || (annee mod 100 <> 0 && annee mod 4 = 0)
;;

(* Définir un type de donnée représentant une date par un jour, un mois et une année. *)
type date = {jour: int; mois: int; annee: int};;

(* En s'appuyant sur la fonction et le type des deux exercices précédents, écrire une fonction qui vérifie qu'une date existe. *)
let date_correcte date =
  if date.mois = 2 then
    if bissextile date.annee then
      1 <= date.jour && date.jour <= 29
    else
      1 <= date.jour && date.jour <= 28
  else
    if (date.mois < 7 && date.mois mod 2 = 0) || (date.mois > 8 && date.mois mod 2 = 1) then
      1 <= date.jour && date.jour <= 30
    else
      1 <= date.jour && date.jour <= 31
;;

(* Écrire une fonction qui donne al longueur du' ne liste (sans utiliser al fonction existante List.length). *)
let rec longueur = function
  | [] -> 0
  | t::q -> 1 + longueur q
;;

(* Écrire une fonction qui donne la valeur minimum d'une liste. *)
let rec minimum = function
  | [] -> failwith "une liste vide n'a pas de minimum"
  | [a] -> a
  | t::q -> min t (minimum q)
;;

(* Définir un type pour les nombres complexes. Affecter une variable I avec la base des imaginaires purs. Écrire les fonctions addition, multiplication et conjugaison qui prennent des arguments complexes. *)
type complexe = {re: float; im: float};;

let complexe_of_float z = {re = z; im = 0.};;

let i = {re = 0.; im = 1.};;

let pi = 3.14159265359;;

let add a z = {re = (a +. z.re); im = (z.im)};;

let mul a z = {re = (a *. z.re); im = (a *. z.im)};;

let addc z1 z2 = {re = z1.re +. z2.re; im = z1.im +. z2.im};;

let mulc z1 z2 = 
  {re = z1.re *. z2.re -. z1.im *. z2.im; 
  im = z1.re *. z2.im +. z1.im *. z2.re};;

let conjugue z = {re = z.re; im = -.z.im};;

let module_complexe z = sqrt ((z.re *. z.re) +. (z.im *. z.im));;

let argument z = 
	if z.re > 0. then 
    atan (z.im /. z.re)
	else if z.re < 0. then 
    pi +. atan (z.im /. z.re)
	else if z.im > 0. then 
    pi /. 2. 
  else -. pi /. 2.;;

let exponentielle_cplx a = 
	{re = (if a = (pi /. 2.) || a = (3. *. pi /. 2.) then 0. else cos a); 
	im = (if a = pi then 0. else sin a)};;

(* Réécrire les opérateurs booléens *)

let et x y = match (x, y) with
	| (true, true) -> true
	| (_, _) -> false
;;

let ou x y = match (x, y) with
	| (false, false) -> false
	| (_, _) -> true
;;

let non = function
	| true -> false
	| _ -> true
;;
