; NIM/Nama	: Riva Syafri Rachmatullah
; Nama File	: ADT_POINT.lsp
; Topik		: Program pengecek point
; Tanggal	: Kamis, 5 September 2013
; Deskripsi	: Program yang memeriksa dan mengoperasi tipe point

; DEFINISI TYPE
; type point : <x: real , y: real >
; <x,y> adalah sebuah point, dengan x adalah absis, y adalah ordinat

; DEFINISI DAN SPESIFIKASI SELEKTOR
; Absis : point -> real
; Absis(Point) memberikan absis Point P

; Ordinat : point -> real
; Ordinat(Point) memberikan ordinat Point P

; DEFINISI DAN SPESIFIKASI KONSTRUKTOR
; MakePoint : 2 real -> point
; MakePoint(x,y) membentuk sebuah Point dari a dan b dengan a sebagai
; absis dan b sebagai ordinat

; DEFINISI DAN SPESIFIKASI PREDIKAT
; IsOrigin? : point -> boolean
; IsOrigin?(Point) benar jika P adalah titik origin yaitu titik <0,0>

; DEFINISI OPERATOR/FUNGSI LAIN TERHADAP POINT
; Jarak : 2 point -> real
; Jarak(a,b) : menghitung jarak antara 2 point P1 dan P2

; Jarak0 : point -> integer
; Jarak0(Point) menghitung jarak titik P terhadap titik pusat koordinat (0,0)

; Kuadran : point -> integer [1..4]
; Kuadran(Point) menghitung di mana kuadran di mana titik tersebut terletak.
; Syarat: Point bukan titik origin dan bukan terletak pada Sumbu X dan 
; bukan terletak pada sumbu Y. }

; REALISASI SELEKTOR
(defun Absis (Point)
	(car Point)
)

(defun Ordinat (Point)
	(car (cdr Point))
)

; REALISASI KONSTRUKTOR
(defun MakePoint (x y)
	(cons x (cons y nil))
)

; REALISASI PREDIKAT
(defun IsOrigin? (Point)
	(and (= (Absis Point) 0) (= (Ordinat Point) 0))
)

; DEFINISI OPERATOR/FUNGSI LAIN TERHADAP POINT
(defun Jarak (a b)
	(sqrt (+ (expt (- (Absis a) (Absis b)) 2) (expt (- (Ordinat a) (Ordinat b)) 2)))
)

(defun Jarak0 (Point)
	(sqrt (+ (expt (Absis Point) 2) (expt (Ordinat Point) 2)))
)

(defun Kuadran (Point)
	(cond
		((and (> (Absis Point) 0) (> (Ordinat Point) 0)) 1)
		((and (< (Absis Point) 0) (> (Ordinat Point) 0)) 2)
		((and (< (Absis Point) 0) (< (Ordinat Point) 0)) 3)
		((and (> (Absis Point) 0) (< (Ordinat Point) 0)) 4)
		nil
	)
)

; APLIKASI

; => (setq a (MakePoint 1 0))
; (1 0)
; => (setq b (MakePoint 0 0))
; (0 0)
; => (setq c (MakePoint 9 2))
; (9 2)
; => (setq d (MakePoint -1 -1))
; (-1 -1)
; => (absis a)
; 1
; => (absis c)
; 9
; => (ordinat c)
; 2
; => (IsOrigin? b)
; T
; => (IsOrigin? c)
; NIL
; => (Jarak a c)
; 8.246211
; => (Jarak0 c)
; 9.219544
; => (Kuadran c)
; 1
; => (Kuadran d)
; 3