#lang at-exp racket/base
(require racket/draw
         racket/class)

@(define Rtable void)

@Rtable["Relationships"
        (list (Rtable "Friendship"
                      (list "Pranksters" "Friendly rivals" "New friendship"
                            "Raised next door to one another"
                            "A friend who always get you into trouble"
                            "Best friends"))
              (Rtable "Around the School"
                      (list "Bitter enemies" "Teacher and student"
                            "Teammates on the sports team"
                            "Prefect and junior student"
                            "Groundskeeper and friend"
                            "Members of a secret organization within the school"))
              (Rtable "Romance"
                      (list "Former couple" "Young and in love"
                            "One took a love potion"
                            "Long-time crush and object of crush"
                            "Jilted lover" "One-time fling"))
              (Rtable "Work"
                      (list "Fellow teachers"
                            "Fellow teachers who are bitter enemies"
                            "Works out in town"
                            "Creators of joke items"
                            "Fellow prefects"
                            "Seller of magic items and buyer"))
              (Rtable "Crime"
                      (list "Sells contraband magical items"
                            "Teaches dark and unspeakable magic in private"
                            "Bully and victim"
                            "Small time thieves"
                            "Secret servants of the Dark Lord"
                            "School bully and crony")))]

@Rtable["Needs"
        (list (Rtable "to get out"
                      (list "of this class I'm failing"
                            "of this relationship with significant other"
                            "of my family name"
                            "of this curse I'm under"
                            "of this nickname"
                            "of the favor I owe"))
              (Rtable "to get even"
                      (list "with my tormentor"
                            "with the teacher who failed me"
                            "with the person who swindled me"
                            "with the school hero"
                            "with the rival sports team"
                            "with the school"))
              (Rtable "to prepare"
                      (list "for my big final test"
                            "for the Christmas ball"
                            "to get a significant other"
                            "for my family to visit"
                            "for tryouts for the sports team"
                            "a secret potion"))
              (Rtable "to get respect from"
                      (list "my parents"
                            "my rival"
                            "the headmaster of the school"
                            "the entire school"
                            "the sports team who shunned me"
                            "the Dark Lord"))
              (Rtable "to get the truth about"
                      (list "how my parents died"
                            "the week I have no memory of"
                            "the secret chamber I found in the school"
                            "my brother's disappearance"
                            "the ghostly voices I hear at night"
                            "who the newest teacher truly is"))
              (Rtable "to get rich"
                      (list "by any means necessary"
                            "through theft"
                            "to help my family"
                            "through fame"
                            "through selling contraband"
                            "through betting on card games")))]

@Rtable["Location"
        (list (Rtable "the school grounds"
                      (list "the groundskeeper's house"
                            "the malevolent, animated tree"
                            "the sports field"
                            "under the bleachers at the sports field"
                            "the haunted forest"
                            "the lake"))
              (Rtable "classrooms"
                      (list "History of Magic class"
                            "Potions class"
                            "Charms class"
                            "Transfiguration class"
                            "Divination class"
                            "an empty and abandoned classroom"))
              (Rtable "common area"
                      (list "the owlery"
                            "the great hall"
                            "main entryway"
                            "on a moving staircase"
                            "a House common room"
                            "the dungeons"))
              (Rtable "secret locations"
                      (list "a hidden chamber"
                            "the room accessible only to those who need it most"
                            "secret exits to the village"
                            "the third floor"
                            "the headmaster's office"
                            "the haunted house in the village"))
              (Rtable "the village"
                      (list "the sweetshop" "the inn" "the train station"
                            "the joke shop" "outside the haunted house"
                            "the teashop"))
              (Rtable "the back alley of London"
                      (list "the magical bookstore" "the Wizarding bank"
                            "the local inn" "the wand store" "the robe store"
                            "the dark alley behind the main thoroughfare")))]

@Rtable["Objects"
        (list (Rtable "illegal"
                      (list "a dark magic tattoo"
                            "a forbidden book of sorcery"
                            "a severed human hand bless with dark magic"
                            "a basilisk's fang"
                            "a mask from your father, servant of the Dark Lord"
                            "a trunk containing an evil magical creature"))
              (Rtable "contraband"
                      (list "a watch which turns back time"
                            "joke candy"
                            "illegal fireworks"
                            "a magical pool of water capable of seeing past memories"
                            "stinkbombs"
                            "an exploding wand"))
              (Rtable "transportation"
                      (list "the best of the best broomstick"
                            "a flying car"
                            "a flying carpet"
                            "a handful of teleportation powder"
                            "a cheap hand-me-down broomstick"
                            "an old shoe which can teleport you to destinations unknown"))
              (Rtable "potions"
                      (list "a powerful love potion"
                            "a a confusing concoction"
                            "Liquid luck"
                            "polymorphing potion"
                            "a truth serum"
                            "Draught of Death, to make the user appear dead"))
              (Rtable "rumors"
                      (list "the most recent teacher to arrive at the school is actually a vampire"
                            "there is a portal deep within the bowels of the school which can send you back in time"
                            "two of the most popular kids in the school are servants of the Dark Lord"
                            "school is going to be cancelled next year due to threats to the school"
                            "the school's hero is losing his mind and could snap at any moment"
                            "the school was built over a grave site, and the ghosts are angry"))
              (Rtable "sentimental"
                      (list "your grandfather's wand"
                            "your older sister's cat"
                            "a very old magical book which has been in the family for years"
                            "a ring of invisibility from your mother"
                            "your father's broom from when he was captain of the sports team"
                            "your first wand"))
              )]

(define (char-sheets dc)
  (send dc start-page)
  (send dc draw-text "XXX Not completed yet" 0 0)
  (send dc end-page)
  (send dc start-page)
  (send dc draw-text "XXX Not completed yet" 0 0)
  (send dc end-page))

(define (player-reference dc)
  (send dc start-page)
  (send dc draw-text "XXX Not completed yet" 0 0)
  (send dc end-page)
  (send dc start-page)
  (send dc draw-text "XXX Not completed yet" 0 0)
  (send dc end-page))

(require urlang
         urlang/html
         urlang/extra
         urlang/for
         racket/format
         racket/port)

(define (script url)   @~a{<script src=@url ></script>})    
(define (link-css url) @~a{<link href=@url rel="stylesheet">})

(define (gm-reference-js)
  (with-output-to-string
    (λ ()
      (parameterize ([current-urlang-run? #f]
                     [current-urlang-echo? #t])
        (urlang
         (urmodule gm
                   (import document Math)
                   (define (replace-html! id s)
                     (let ([x (document.getElementById id)])
                       (:= x "innerHTML" s)))
                   (define (set-click! id p)
                     (let ([x (document.getElementById id)])
                       (x.addEventListener "click" p #f)))
                   (define (random-array-ref a)
                     (ref a (Math.floor (* (Math.random) a.length))))
                   (define getClass (object))
                   (define (class-is x c)
                     (and x (=== (getClass.toString.call x) c)))
                   (define (procedure? x) (class-is x "[object Function]"))
                   (define (array? x) (class-is x "[object Array]"))
                   (define (string-append x y)
                     (x.concat y))

                   ;; XXX
                   (define Who
                     (array "Siblings" "Parent and Child" "Step-siblings"
                            "Estranged distant cousins" "Identical twins"
                            "Eccentric aunt/uncle and niece/nephew"))

                   (define (random! x)
                     (cond
                       [(procedure? x)
                        (x)]
                       [(array? x)
                        (random-array-ref x)]
                       [else
                        x]))

                   ;; XXX
                   (define plot
                     (lambda ()
                       (string-append (random! Who) " needs ")))
                   
                   (define (random-plot!)
                     (replace-html! "plot" (random! plot))
                     (set-click! "more-plot" random-plot!))
                   
                   (random-plot!)))))))

(define (gm-reference)
  @~a{
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head;
         any other head content must come *after* these tags -->
    <title>Wizarding World GM Reference</title>      
  </head>
  <body>
    XXX Not implemented yet.
    @~xs[@div[id: "plot"]{XXX Not generated}
         @button[id: "more-plot"]{Refresh}]
    <script>@(gm-reference-js)</script>
  </body>
</html>})

(define (generate-pdf! p f)
  (define DPI 300)
  (define dc
    (new pdf-dc%
         [interactive #f]
         [as-eps #f]
         [width (* 11 DPI)]
         [height (* 8.5 DPI)]
         [output p]))
  (send dc start-doc (format "Generating ~a" p))
  (f dc)
  (send dc end-doc))

(define (generate-html! p f)
  (with-output-to-file p #:exists 'replace
    (λ ()
      (display (f)))))

(define (generate! dist-p)
  #;
  (generate-pdf! (build-path dist-p "char-sheets.pdf")
                 char-sheets)
  #;
  (generate-pdf! (build-path dist-p "player-reference.pdf")
                 player-reference)
  (generate-html! (build-path dist-p "gm-reference.html")
                  gm-reference))

(module+ main
  (require racket/cmdline)
  (command-line #:program "resources"
                #:args (dist-p)
                (generate! dist-p)))
