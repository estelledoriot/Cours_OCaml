(* Estelle Doriot *)
(* Cours: programmation fonctionnelle *)

(* fonctions *)
let f x = x * x;;
let f = function x -> x * x;;

f 3;;
f 2 * 3;;
(f 2) * 3;;
f (2 * 3);;
f (-40);;

(* fonctions anonymes *)
fun x -> x * 2;; (* définition d'une fonction anonyme *)
(fun x -> x * 2) 3;; (* applique une fonction anonyme sur la valeur 3 *)

(* fonctions à plusieurs paramètres *)
let g x y = x * y + 2;;
g 2 3;;
let g = function x -> function y -> x * y + 2;;
let h (x, y) = x * y + 2;;
h (2, 3);;
let m x = g 2 x;;
let m = g 2;;
let curry f = fun x y -> f(x,y);;
let uncurry f = function (x, y) -> f x y;;

(* filtrage *)
let sinc = function
  | 0.0 -> 1.0
  | x -> sin(x) /. x;;

let est_nul = function
  | 0 -> true
  | _ -> false;;