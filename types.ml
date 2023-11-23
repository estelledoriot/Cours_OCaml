(* Estelle Doriot *)
(* Cours: variables et types *)

(* introduction *)
2 + 3;;

(* entiers *)
max_int;;
min_int;;
1 + 3 mod 2;;
2 * 5 / 3 ;;
5 / 3 * 2;;
5 mod 2 ;;

(* flottants *)
1.5 *. 3. +. 2.23;;
log(2.);;

(* caractères et chaînes de caractères *)
'a';;
"bonjour";;
String.make 5 'a';;
String.length "bonjour";;
"hello" ^ "!";;
String.sub "bonjour" 2 2;;

(* booléens *)
(1<2) && (4=3);;
(1<2) || (4=3);;
not (1 = 2) || (1 / 0 = 1);; (* pas d'erreur car la première opérande est vraie *)
not (1 = 2) && (1 / 0 = 1) ;; (* erreur car la deuxième opérande est évaluée *)
(1 < 6);;
"alpha" < "alphabetique" ;;

(* identificateurs *)
let a = 3;;
let n = 10 in 
  n + 2;;
let c = 10 and d = 20 in
  c + d;;

(* types complexes *)
(25, "bonjour");;
fst ("caml", 0.75);;
snd ("caml", 0.75);;
let p1 = (1, 2);;
let (x, y) = p1 ;;
let truc = (13, 25.5, "bonjour");;
(1, 4, 6) < (1, 5, 2);;
type point = (float * float);;
type t_point = {x : float ; y : float} ;;
let p1 = {x = 0.5; y = 0.};;
p1.x;;
type couleur = Pique | Coeur | Carreau | Trefle;;
let couleur1 = Carreau;;
type carte = As | Roi | Reine | Valet | Point of int;;
let c1 = Roi;;
let c2 = Point 4;;
type 'a liste = Vide | Cons of 'a * 'a liste;;

(* entrées-sorties *)
print_int a;
print_newline ();
print_string "bonjour";
print_newline ();;
let a = read_int ();;