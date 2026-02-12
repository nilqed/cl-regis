

(defvar *s* t)

(defun begin () (format *s* "~C~C~C~C" #\Esc #\P #\1 #\p))
(defun end () (format *s* "~C~C" #\Esc #\\))

(defun setpos (x y) (format *s* "P[~A \,~A]" x y))
(defun circle (r) (format *s* "C[+~A]" r))
(defun circlef (r) (format *s* "C(W(S1))[+~A]" r))
(defun clear () (format *s* "S(E)"))

(defun pixela (x y) (format *s* "P[~A \,~A]V[]" x y))
(defun pixelr () (format *s* "V[]"))
(defun mover (dx dy) (format *s* "P[+~A \,+~A]" dx dy))
(defun text (txt size) (format *s* "T(S~A) \"~A\"" size txt))

(defun arc (deg r) (format *s* "C(A+~A)[+~A]" deg r))
(defun box (w h) (format *s* "V(B)[+~A \,][ \,+~A][+~A \,](E)" w h (- w)))
(defun boxf (w h) (format *s* "V(W(S1))(B)[+~A \,][ \,+~A][+~A \,](E)" w h (- w)))
(defun regis (cmd) (format *s* "~A" cmd))

(defun color (c) (format *s* "W(I(~A))" c))
(defun lineato (x y) (format *s* "V[][~A \,~A]" x y))
(defun linerto (dx dy) (format *s* "V[][~A \,~A]" dx dy))
(defun wstyle (s) (format *s* "W(I(~A))" s))
(defun mroffd(d offset) (format *s* "P(W(M~A))~A" d offset))
(defun setposr (dx dy) (format *s* "P[~@A \,~@A]" dx dy))
(defun pat (p) (format *s* "W(~A)" p))

;;;

(defun test1 ()
  (progn (begin) (clear) (setpos 500 250) (circle 100) (circlef 70) (end)))

(defun test2 ()
  (progn (begin) (clear) (setpos 500 250) (text "cl-regis :)" 2) (end)))
  

(defun test3 ()
  (progn (begin) (clear) (setpos 500 250) (arc 45 100) (box 30 40) (end)))
  

(defun test4 ()
  (progn (begin) (clear) (setpos 500 250) (color "Y") (boxf 30 40) (end)))
  

(defun test5 ()
  (progn (begin) (clear) (setpos 500 250) (lineato 400 300) (linerto -40 50) (end)))
  
