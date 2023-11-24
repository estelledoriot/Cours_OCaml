(* Estelle Doriot *)
(* Cours: programmation impérative *)

(* références *)
let x = ref 3;; (* définie une variable x qui "pointe" vers un emplacement mémoire contenant 3 *)
x := 4;; (* modifie la valeur pointé par x avec := *)
!x;; (* la valeur a bien été modifiée *)
x := !x + 1;; (* incrémente de 1 la valeur de x *)

let cpt = ref 0;;
cpt := !cpt + 1;;
cpt := succ !cpt;;
incr cpt;;

(* types mutables *)
type date = {mutable jour: int; mois: string; an: int};;
let today = {jour = 30; mois = "novembre"; an = 2008};;
let tomorrow = {jour = 1; mois = "décembre"; an = 2008};;
today.jour <- 3;;
today;;

(* structures conditionnelles *)
let abs x =
  if x < 0. then 
    -. x
  else 
    x;;

(* erreur: 
let mon_log x = 
  if x > 0. then
    log(x)
  else
    "ça marche pas";;
*)

let parite n =
  if n mod 2 = 1 then
    begin
      print_string "impair"; print_newline ()
    end
  else
    begin
      print_string "pair"; print_newline ()
    end;;

let parite n =
  if n mod 2 = 1 then
    (print_string "impair"; print_newline ())
  else
    (print_string "pair"; print_newline ());;

(* boucles *)
let factorielle n = 
  let res = ref 1 in
  for i = 1 to n do
    res := (!res) * i
  done;
  !res;;

for i = 3 downto 1 do
  print_int i
done;;

let newton e u0 = 
  let f x = x /. 2. +. 1. /. x 
  and rac2 = ref u0 in 
  while (abs_float (2. -. (!rac2) *. (!rac2)) > e) do
    rac2 := f (!rac2) 
  done;
  !rac2;;


