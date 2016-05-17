#lang scribble/base
@(require scribble/manual)

@(begin
   (define (dice n d)
     (format "~ad~a" n d))
   (define DT deftech)
   (define dresult bold)
   (define T tech))

@title{Wizarding World}
@author{@author+email["Jay McCarthy" "jay.mccarthy@gmail.com"]}

@DT{Wizarding World} is a tabletop roleplaying game that is
mechanically based on the
@link["https://en.wikipedia.org/wiki/Powered_by_the_Apocalypse"]{Powered
by the Apocalypse} system and thematically based on the fictional
universe of
@link["https://en.wikipedia.org/wiki/Fictional_universe_of_Harry_Potter"]{J. K. Rowling's
@T{Harry Potter} series}. It draws inspiration from many previous
attempts to build a @T{Potterverse}-themed game. It draws so
heavily from materials like @link["http://dungeon-world.com"]{Dungeon
World} that you should really read to understand this. Perhaps I will
eventually integrate the necessary materials.

I designed it for basic roleplaying with my young kids. They are very
interested in the @T{Harry Potter} world and in telling stories, but I
wanted to give them some structure. Most of the other systems I've
looked into attempts to create something like a traditional
combat-focused RPG, which I don't think works in the
@T{Potterverse}. I wanted something that was very light on rules and
mechanics, but had structure to focus their creativity.

@table-of-contents[]

@section{Basics}

A @DT{play group} is a @T{gamemaster} and multiple
@T{leads} controlled by @DT{players}. A @DT{lead} is an
important fictional character controlled by a human @T{player}. The
@DT{gamemaster} (or GM) controls the rest of the universe and
adjudicates between @T{leads}.

The @DT{basic mechanic} is for a @T{lead} to describe their action. If
the action could be done by any normal person in the circumstances,
then no dice are needed. However, if some special circumstance or
special ability is required, the @T{player} rolls @dice[2 6] and adds
a modifier number to the result based on the @T{category} of the
action.
@itemlist[

@item{If both are @emph{6} or the modified result is @dresult{10 or
more}, then the action is a @DT{success}.}

@item{If both are @emph{3} or the modified result is @dresult{7, 8, or
9}, then the action is a @DT{partial} success, where the main result
is accomplished but there are some @T{consequence}, whose category is
determined by the @T{player}..}

@item{If both are @emph{1} or the modified result is @dresult{6 or
less}, then the action is a @DT{failure} and the @T{gamemaster}
chooses and narrates the consequences. Whenever a roll results in
@T{failure}, the @T{lead} receives @T{XP} in the @T{category} of the
action.}
]

@section{Characters}

Each @T{lead} has a fictional identity: their name, gender, what they
look like, what house they are in, what their familiar is like,
etc. Two aspects of their fiction have particular significance:
@itemlist[
@item{Their @DT{personality} which is a short description of how they
act and react to situations.}

@item{Their @DT{motivation} which is a short description of their
current goals as a person.}
]
Both of these may change over time, but they are explicitly called out
regularly during play.


Each @T{lead} has a mechanical identity that defines how it interacts
with the rules of the game. It has the following properties:
@itemlist[

@item{@DT{Year} in School, which is used to compute the
@T{year modifier}.}

@item{@DT{Attributes}, which are:
      @itemlist[
       @item{@DT{Gryffindor} (fire, bravery, daring, nerve, and chivalry)}
       @item{@DT{Hufflepuff} (earth, hard work, dedication, patience, loyalty, and fair play)}
       @item{@DT{Ravenclaw} (air, intelligence, knowledge, grave, and wit)}
       @item{@DT{Slytherin} (water, ambition, cunning, and resourcefulness)}
       ]}

@item{@DT{Disadvantage}, which is a loose fictional term
indicating something lacking in the character, whenever the
disadvantage applies, a @bold{-1} modifier is applied.}

@item{@T{Skill} Modifiers, representing training in particular
subjects. See @T{Advancement} and @T{Skills} for more
information.}

]

@subsection{Character Creation}

Assign @T{attribute} modifiers: one is given a @bold{+2} modifier, one
a @bold{+1}, one a @bold{+0}, and one a @bold{-1} modifier,
representing a student's initial endowment of ability. The relative
values do not determine the house placement, which is purely
determined by the fiction.

Choose one @T{disadvantage} based on the character's identity. For
example, @T{Hermione} is @T{Mudblood}, which makes some
@T{Pure Blood} characters dislike her. She is also
@emph{Oblivious}, which gives her a disadvantage in some social
situations. On the other hand, @T{Harry} is @emph{Ignorant of the
Wizarding World}, so he is disadvantaged in that area. Disadvantages
do not apply specifically to one @T{skill}, but apply broadly to
fictional circumstances.

Choose one @DT{advantage} based on the character's identity. This
provides a relative @bold{+1} to any @T{skill}'s modifier. For
instance, @T{Neville} has an advantage in @T{Herbology}, while
@T{Harry} is advantaged in @T{Defense Against the Dark Arts}.

Set each @T{skill} modifier at @bold{0}.

@section{Skills}

Characters have a different modifier for every class they take at
@T{Hogwarts}. These are called @DT{skills} and are:
@itemlist[
@item{@DT{Care of Magical Creatures}: Knowledge of non-dark magical creatures (third year)}
@item{@DT{Charms}: Alters what an object or creature does}
@item{@DT{Defense Against the Dark Arts}: Defense, offense, and dark creature knowledge}
@item{@DT{Divination}: Minor predictions (astronomy) until third year}
@item{@DT{Flying}: Not used for rudimentary flight}
@item{@DT{Herbology}: Care for and magical use of plants}
@item{@DT{History of Magic}: Lore and library research}
@item{@DT{Potions}: Brewing of magical potions}
@item{@DT{Transfiguration}: Alters what an object or create is}
]

Other classes mentioned in the books are not skills and should be
considered attribute actions or their closest class, if they are ever
arise in play. For example, @T{Muggle Studies}, @T{Apparation},
@T{Arithmancy}, @T{Occlumency}, @T{Legilimency}, @T{Ancient Runes},
etc.

@subsection{Invoking Skills}

Whenever a character attempts to invoke a skill, such as by casting a
spell, remembering a piece of lore from a class, or using a divination
technique, they must explain how they know about it. This may require
a flashback-style scene where the player narrates what the class
period was like when they learned about it.

If the characters are making plans, then it is best to resolve these
scenes before getting into the action. For example, suppose @T{Ron}
and @T{Hermione} are trying to ride a gryphon as part of their plan,
rather than interrupting that action later when they are wandering in
the woods, resolve a class sequence early. This gives an opportunity
for @T{practice} and, thus, @T{advancement}.

If the @T{gamemaster} knows a skill will come in useful, they can put
the characters into a scene as well. The players can also just ask for
a scene from a particular class, which is a way of communicating to
the @T{gamemaster} that they would like the solution to involve that
class.

@subsection{Spell Names}

Whenever you cast a spell, wave your pencil around like it is a wand
and say something that sounds Latin. Here's a good way to generate
fake Latin: write down the effect in English, remove everything except
nouns and adjectives (and sometimes verbs), then replace word endings
with Latin ones:

@tabular[#:sep @hspace[1]
         #:style 'boxed
         #:column-properties '(center)
         (let ()
           (local-require racket/list)
           (define (ensure-length n l)
             (define ln (length l))
             (cond
               [(= n ln)
                l]
               [else
                (append l (make-list (- n ln) ""))]))
           (define l
             (sort
              '("-a" "-am" "-ae" "-as" "-arum" "-is"
                "-us" "-e" "-i" "-um" "-os" "-orum" "-ius"
                "-ium" "-ios" "-iorum" "-em" "-ibus" "-es"
                "-ebus" "-erum" "-o" "-ox")
              string-ci<=?))
           (define N 3)
           (define expected-len (ceiling (/ (length l) N)))
           (for/list ([i (in-range N)])
             (ensure-length
              expected-len
              (for/list ([e (in-list l)]
                         [ei (in-naturals)]
                         #:when (= i (modulo ei N)))
                e))))]

For example, @T{Ron} causes a spell to cause @T{Malfoy} to burp
toads. We think, "Burp Toads from Mouth". Then, revise it to, "Toad
Mouth". We come up with "Toadox Moutharum".

Each player may want to write down their own personal spellbook on the
back of their character sheet for consistency.

@section{Advancement}

@(define AdvancementXP 5)

Every @T{skill} and @T{attribute} (collectively called
@DT{categories}) has experience (or @DT{XP}) points tracked for
it. Every time a roll for a category fails, then the player marks an
additional XP for it. This is called @DT{practice}.

In between semesters, if a character's skill's XP equals
@bold{@(number->string AdvancementXP)}, then they may undergo
@DT{advancement} and the modifier increases. A modifier cannot
increase more than once a year. Modifiers may never increase beyond
@bold{+3}, except the initial @T{advantage}d skill.

For example, @T{Harry} fails a @T{History of Magic} at @bold{+1} roll
attempting to do research on his own regarding the @T{Tri-wizard
Tournament} and is disadvantaged in the game. He increments his XP on
this skill and finally reaches @bold{@(number->string AdvancementXP)}
XP, so he may advance to @bold{+2} in the subject at the end of the
semester.

This system encourages growth specifically in the areas where
characters are not succeeding and rewards them with more options.

In the fiction, you can use modifier values as the student's scores on
tests, with @bold{+2} as passing @T{O.W.L.} with good marks and
@bold{+3} as achieving @T{N.E.W.T.} status. Other than this, there is
no purpose to explicitly representing tests, because it would be
boring to have a student fail out of @T{Hogwarts}.

@subsection{End of Session}

In addition to @T{practice}, players receive @T{XP} for their
characters through roleplaying and story progression. At the end of
each session, review the following questions with each player:
@itemlist[

@item{Did your character fulfill their @T{motivation}? If so, take
note and come up with a new motivation at the next appropriate
moment.}

@item{Did your character act out their @T{personality} at least once
this session? Furthermore, consider whether the character's
personality has changed as a result of the story.}

@item{Did the group learn something new and important about the
world?}

@item{Did the group overcome a notable monster or enemy?}

@item{Did the group acquire a memorable treasure or reward?}

]

For each "yes", then the character may mark @T{XP} in any position.

@section{Actions}

All actions use the @T{basic mechanic}. However, depending on the
particular action the modifier is computed differently. Simiarly,
success and failure bring different @T{consequences}.

Each action's modifier is computed by adding the @T{disadvantage}
modifier (when appropriate), the @T{year modifier}, and either the
@T{attribute} or @T{skill} modifier (depending on whether the
action is a skill or general action).

The @DT{year modifier} represents two ideas mechanically. First,
young students are less capable of physical activities, are less
convincing and astute socially, and so on. Thus, as they grow up, they
become more capable generally. Second, for magical activities, the
year modifier encodes the idea that @T{Hogwarts} is taking kids
that have no skills in wizardy and turning them into proficient
wizards. 

@tabular[#:sep @hspace[1]
         #:column-properties '(right center)
         #:row-properties '(bottom-border ())
         (cons (list @bold{Year} @bold{Modifier})
               (for/list ([i (in-naturals 1)]
                          [ys (in-list '("First" "Second" "Third"
                                         "Fourth" "Fifth" "Sixth" "Seventh"))])
                 (list ys (bold (modifier (year-modifier i))))))]

It is generally obvious when and which @T{skill} is being used. Some
subtlety comes from skills like @T{History of Magic} which is not
explicitly a matter of casting spells with certain effects. I treat
@T{History of Magic} as a stand-in for research in the library and
remembering lore.

It is also generally obvious when an @T{attribute} applies, but less
clear which should apply. Most of my RPG experience comes from games
like Dungeons and Dragons and @T{Dungeon World}, so I try understand
the @T{attributes} relative to those games. I treat @T{Gryffindor} as
a combination of @bold{STR}, @bold{WIS} and a little @bold{CON};
@T{Hufflepuff} as @bold{WIS}, @bold{CON}, and a little @bold{CHA};
@T{Ravenclaw} as @bold{INT} and @bold{DEX}; and, @T{Slytherin} as
@bold{DEX}, @bold{INT}, and a little @bold{CHA}.

@subsection{Attribute Examples}

@T{Luna} sneaks down the hallway to avoid being spotted by @T{Mrs
Norris}... @T{Ravenclaw}, because it is a matter of intelligence and
grace.

@T{Malfoy} comes up with a rumor to raise suspicions of
@T{Harry}... @T{Slytherin}, because he is trying to be cunning and
manipulative.

@T{Harry} tries to covince @T{Neville} to help him on his
@T{Herbology} task... @T{Slytherin} if he is being manipulative and
@T{Hufflepuff} if he is being kind and loving.

@T{Neville} runs straight at @T{Voldemort} even though he is readying
a curse... @T{Gryffindor}, because he is demonstrating bravery.

@T{Hermione} works on fixing the magical artifact damaged by a
misfired curse... @T{Hufflepuff}, because she is exerting hardwork and
effort to figure it out. If instead she had investigated in the
library for a way to fix it, perhaps it would be a @T{History of
Magic} skill.

@T{Ron} is trying to understanding what happened in this room to cause
such a mess... @T{Ravenclaw}, beecause it is a matter of intelligence,
reasoning, and attention to detail.

@subsection{Combat}

Combat is not a separate kind of activity from the rest of play, but
follows the rest of the structure of play.

Characters in the @T{Potterverse} are very brittle and the style of
story does not lend itself to dungeon crawls with many monster falling
by the sword. Most duels are ended in just a few spells. This is
reflected in @emph{Wizarding World} with the @T{Status} system.

A character's @DT{Status} is a temporary aspect of their
character and one of the following:
@itemlist[
@item{@DT{Five by Five}: Everything is okay.}
@item{@DT{Hurt}: May be recovered with an action or a visit to the hospital. If applied twice, then @T{Taken Out}.}
@item{@DT{Cursed}: Take @bold{-1} to all rolls until cured with a spell or by the fiction. If an NPC is cursed, then take @bold{+1} to all rolls against them. Curses do not stack.}
@item{@DT{Impeded}: Like cursed, but with a situational disadvantage only to some rolls.}
@item{@DT{Hexed}: Like @T{Cursed}, but only curable in fiction, such as with a potion or a visit to the hospital.}
@item{@DT{Taken Out}: Totally out of the scene until resolved by the fiction.}
]

@T{Impeded} normally involves something physical, like being de-wanded
or losing your glasses, while @T{Cursed} normally involves something
magical. A character is typically only @T{Hexed} as a consequence of
the plot and not as a normal course of events.

A typical duel involves trying to get your opponent @T{Cursed} and
then moving in for two @T{Hurt}s to bring them to @T{Taken Out}.

@subsection{Consequences}

As a result of an action, there may be positive or negative
@DT{consequences}. In general, these should always flow from the
fiction. The story is most interesting when the @T{leads} don't get
their way exactly. So, on a success, the @T{gamemaster} should look
for a way to give the player a hard choice of two good things out of
three possibilities, while on a partial success, they can only choose
one. For example, if @T{Snape} is attempting to de-curse @T{Harry}'s
broom without being noticed, his goal is to (a) cast the spell
effectively, (b) not be noticed, and (c) not have a counter-curse put
on him. In the actual story, he chooses to not get result (b), as
@T{Hermione} notices him.

Here are some choices that may be appropriate in different
circumstances.

@itemlist[
@item{You hurt, curse, or impede the target.}
@item{They don't successfully hurt, curse, or impede you back.}
@item{You don't attract attention.}
@item{The immediate threat is averted or driven off.}
@item{The person you were rescuing is unhurt.}
@item{The people you don't want to find out don't.}
@item{The rumors paint you in a positive light.}
@item{The event you were trying to stop is only weakened.}
@item{You haven't left yourself or whoever you were helping open to a follow-up.}
@item{There isn't an unexpected side-effect.}
@item{You can ask the GM to truthfully answer a question.}
@item{You heal or bless without any negative side-effect.}
@item{They agree to what you want them to do.}
@item{No one finds out what you did.}
@item{You understand what to do without acting dangerously.}
@item{You don't leave something important behind.}
@item{You don't expose yourself to risk or cost.}
]

Here are some ideas for consequences:

@itemlist[
@item{Take things in the worst possible way.}
@item{Take things to the logical extreme.}
@item{Add a strange magical effect.}
@item{Split the players up.}
@item{Bring someone new into the scene.}
@item{Give them a choice of the consequences.}
@item{Hurt them, hopefully in a ridiculous way.}
@item{Put them in the wrong place at the wrong time.}
@item{Introduce a magical event.}
@item{Have a ghost or creature do something strange.}
@item{Have someone act without thinking.}
@item{Make their action work, but turn it around them on.}
]

There are no strict rules for what are consequences. The only
principle is that: on a @dresult{10+}, you get what you want with only
soft consequences@";" on a @dresult{7-9}, you get most of what you
want with maybe a hard consequence@";" and on a @dresult{6-}, you
don't get what you want and experience hard consequences.

@section{Miscellaneous}

@subsection{Quidditch}

I don't like Quidditch, so I don't include it in the game
mechanically.

@subsection{Probabilities}

The following tables show the probability of succeeding in various
circumstances:

@(begin
   (define (year-modifier y)
     (vector-ref (vector -3 -2 -1 0 +1 +1 +2) (sub1 y)))
   (define (probability ? m yr)
     (/
      (for*/sum ([x (in-range 1 (add1 6))]
                 [y (in-range 1 (add1 6))])
        (if (? (= x y 1) (= x y 3) (= x y 6) (+ x y (year-modifier yr) m))
            1 0))
      36))
   (define (roll-fail f p s x)
     (and (not p) (not s) (or f (<= x 6))))
   (define (roll-partial f p s x)
     (and (not f) (not s) (or p (<= 7 x 9))))
   (define (roll-success f p s x)
     (and (not f) (not p) (or s (<= 10 x))))
   (define (modifier m)
     (format "~a~a"
             (if (<= 0 m) "+" "")
             m)))

@(let ()
   (for/list ([m (in-range -2 (add1 +4))]
              [i (in-naturals)])
     @tabular[#:sep @hspace[1]
              #:style 'boxed
              #:column-properties '(center)
              (let ()
                (define YEARS 7)
                (define (probs ?)
                  (for/list ([y (in-range 1 (add1 YEARS))])
                    (real->decimal-string
                     (probability ? m y))))
                (list
                 (cons (modifier m)
                       (for/list ([y (in-range 1 (add1 YEARS))])
                         (define x (bold (format "Year ~a" y)))
                         x))
                 (cons @bold{Fail} (probs roll-fail))
                 (cons @bold{Partial} (probs roll-partial))
                 (cons @bold{Complete} (probs roll-success))))]))

@(define (probability-percentage-str ? m y)
   (string-append (number->string (round (* 100 (probability
? m y)))) "%"))

This essentially shows that first years are extremely unlucky to
succeed in anything: their @bold{+2} attribute only gives them a
@(emph (probability-percentage-str roll-partial 2 1)) partial success
rate and their @T{advantage} (@bold{+1}) skill gives them only
a @(emph (probability-percentage-str roll-partial 1 1))
chance. Complete successes are even lower with rates of
@(emph (probability-percentage-str roll-success 2 1)) and
@(emph (probability-percentage-str roll-success 1 1)) respectively.

On the other hand, seventh years are very capable, but not invincible,
even in their advantage at @T{N.E.W.T.} levels.

@subsection{Advancement Difficulty}

@T{Advancement} through @T{practice} is increasingly more difficult,
because it relies on repeated failure to accumulate
@T{XP}. Essentially, the probability of advancement is a
@link["https://en.wikipedia.org/wiki/Negative_binomial_distribution"]{negative
binomial} random variable where @emph{r} is @(number->string
AdvancementXP).

@(define (to-advance m y)
   (/ AdvancementXP (probability roll-fail m y)))

@(define (to-advance-string m y)
   (number->string
    (ceiling
     (to-advance m y))))

Thus, in the first year, the expected number of spell attempts to
advance a normal @T{skill} is @(to-advance-string 0 1). If we assume
this happens in the first year, then it will take @(to-advance-string
+1 2) attempts to advance again in the second year and
@(to-advance-string +2 3) attempts to finish advancing in the third
year. These are very large number if you consider there being about
five or six scenes per semester. The character would be practicing the
same skill in every scene.

@(define (to-advance-every-two-string m y)
   (number->string
    (ceiling
     (* 1/2
        (+ (to-advance m y)
           (to-advance m (add1 y)))))))

Alternatively, we could imagine it will take two years for each
advancement and average the number of attempts per year. This would
require @(to-advance-every-two-string 0 1) attempts by the end of
second year, @(to-advance-every-two-string 1 3) attempts by fourth
year, and @(to-advance-every-two-string 2 5) attempts by the end of
sixth year.

In summary, this essentially means that an excellent witch will only
be a @bold{+2} by the end of fourth year in most subjects, except
their speciality which may be @bold{+3}, with the rest of
@T{advancement} coming through roleplaying.

@section{Gamemastering}

Follow all the advice of @T{Dungeon World}. The @T{gamemaster} never
rolls dice for mechanical ends (although you may want to use them for
randomization purposes.)

Any time you give a @T{consequence}, make it something the players
won't like. Whenever a player does something thoughtless, give them
another one.

Turn simple things into big ordeals. For example, if the leads want to
make a potion, don't just make a @T{Potions} roll. First, make
them trick a teacher into giving them access to the recipe or
materials. Then, they have to sneak around to get them and assemble
the potion in secret. They have to make the skill action to make it
properly, but they have to be brave to actually quaff it, and if they
aren't brave enough, maybe someone walks in because they were delaying
before doing it.

@subsection{Story Advice}

Your style and taste may vary, of course. With my kids, I took the
kids from first-year through seventh-year, stop, and then start again
as new students as if the universe reset. I do not use any characters
from the actual @T{Potterverse}, because I want things to be as
mysterious and open as the books were. I try not to use stand-ins for
them either, so there is no character that is like @T{The Boy Who
Lived} or @T{He Who Must Not Be Named}. Nevertheless, there are
still dangerous people and mysterious artifacts around @T{Hogwarts}
that attract the attention of dark wizards.

I use the @T{Front} system of @T{Dungeon World} in a highly
structured way based on my understanding of the books:
@itemlist[

@item{There is a single @DT{Story Front} for all seven years that
each other @T{Front} links into. This defines the goals of the "big
bad" of the whole story. I don't plan it in detail before, but try to
keep in consistent.}

@item{Each year has a @DT{Year Front} that defines the threat of
that year as it relates to the @T{Story Front}.}

@item{Years three, four, and five has a @DT{Middle Front}
that defines some large moment that is more connected with one another
than all other years.}

@item{Each year has a @DT{Mystery Front} that defines some
unrelated mystery of that particular year.}

]

The general flow, that comes from the book, is to have each year
divided into @emph{before} and @emph{after} Christmas break, where
beforehand the characters interact with both the @T{Year Front} and
@T{Mystery Front}, but cannot discern which one they are
interacting with. Around the break, they are almost resolved with the
@T{Mystery Front} and understanding that the @T{Year Front} is a
separate concern. These are then resolved in sequence after break.

Since I'm running this for my small kids, I don't deal with any of the
teenage angst of the books or give any real opportunity for darkness,
because that's not my taste, so you won't see much recommendation for
that in here.

@section{Resources}

The following resources are available for speedy play:
@itemlist[

@item{@link["char-sheets.pdf"]{Character sheets} as PDF.}
@item{@link["player-reference.pdf"]{Player reference card} as PDF.}
@item{@link["gm-reference.html"]{GM reference} as HTML (works
offline).}

]

@section{Acknowledgments}

I am indebted to the following projects in this work:
@itemlist[

@item{@link["https://docs.google.com/document/d/1avqZm0uZXEVLLki7OfvveyxEF4awjWSQ_62aABPO3Ko/mobilebasic?pli=1"]{Houses and Wands by neonchameleon} (extreme debt)}

@item{@link["http://fiascoplaysets.com/home/toil-and-trouble"]{Toil and Trouble} playset for @link["http://bullypulpitgames.com/games/fiasco/"]{Fiasco}}
     
@item{@link["http://harrypotter.wikia.com/"]{Harry Potter wikia}}

]

This document refers to the following characters and terms from
products that are not owned by me:
@itemlist[

@item{The @DT{Dungeon World} system from
@link["@http://dungeon-world.com"]{http://dungeon-world.com}:
@DT{Front}.}

@item{The fictional universe of
@link["https://en.wikipedia.org/wiki/Fictional_universe_of_Harry_Potter"]{J. K. Rowling's
@T{Harry Potter} series}, aka the @DT{Potterverse}: @DT{Hogwarts},
@T{Ravenclaw}, @T{Defense Against the Dark Arts}, @DT{Mudblood},
@DT{Malfoy}, @DT{Pure Blood}, @DT{Ron}, @DT{Luna}, @DT{Voldemort},
@DT{Harry}, @DT{Neville}, @DT{Snape}, @T{Gryffindor}, @DT{The Boy Who
Lived}, @T{Hufflepuff}, @T{Slytherin}, @T{Herbology}, @DT{He Who Must
Not Be Named}, @DT{Hermione}, @T{History of Magic}, @DT{Mrs Norris},
@DT{Harry Potter}, @DT{Muggle Studies}, @DT{Muggle}, @DT{Apparation},
@DT{Legilimency}, @DT{Ancient Runes}, @DT{Arithmancy},
@DT{Occlumency}, @DT{O.W.L.}, @DT{N.E.W.T.}, @DT{Tri-wizard
Tournament}.}

]

