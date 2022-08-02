import 'package:injectable/injectable.dart';

@lazySingleton
class Vocabulary {
  final List<String> _words = [
    'abandon',
    'abandoned',
    'ability',
    'able',
    'about',
    'above',
    'abroad',
    'absence',
    'absent',
    'absolute',
    'absolutely',
    'absorb',
    'abuse',
    'academic',
    'accent',
    'accept',
    'acceptable',
    'access',
    'accident',
    'accidental',
    'accidentally',
    'accommodation',
    'accompany',
    'according',
    'account',
    'accurate',
    'accurately',
    'accuse',
    'achieve',
    'achievement',
    'acid',
    'acknowledge',
    'acquire',
    'across',
    'act',
    'action',
    'active',
    'activity',
    'actor, actress',
    'actual',
    'advertisement',
    'adapt',
    'add',
    'addition',
    'additional',
    'address',
    'adequate',
    'adjust',
    'admiration',
    'admit',
    'adopt ',
    'adult',
    'advance',
    'advantage',
    'adventure',
    'advertise',
    'advertisement',
    'advice',
    'advise',
    'affair',
    'affect',
    'affection',
    'afford ',
    'afraid',
    'after',
    'afternoon',
    'afterward',
    'again ',
    'against',
    'age',
    'agency',
    'agent',
    'aggressive',
    'ago',
    'agree',
    'agreement',
    'ahead',
    'aid',
    'aim',
    'air ',
    'aircraft',
    'airport',
    'alarm',
    'alcohol',
    'alcoholic',
    'alive',
    'all',
    'allow',
    'all right',
    'ally',
    'almost',
    'alone',
    'along',
    'alongside',
    'aloud',
    'alphabet',
    'alphabetical',
    'already',
    'also',
    'alter',
    'alternative',
    'although',
    'altogether',
    'always',
    'a.m. ',
    'amaze',
    'ambition',
    'ambulance',
    'among',
    'amount',
    'amuse ',
    'an a, an',
    'analyse ',
    'analysis',
    'ancient ',
    'and',
    'anger',
    'angle',
    'angry ',
    'animal',
    'ankle',
    'anniversary',
    'announce',
    'annoy ',
    'annual',
    'another',
    'answer ',
    'anti',
    'anticipate',
    'anxiety',
    'anxious',
    'any',
    'anyone (also anybody)',
    'anything ',
    'anyway ',
    'anywhere ',
    'apart ',
    'apartment',
    'apologize ',
    'apparent',
    'appeal ',
    'appear',
    'appearance',
    'apple ',
    'application',
    'apply ',
    'appoint ',
    'appointment',
    'appreciate ',
    'approach ',
    'appropriate',
    'approval',
    'approve (of)',
    'approximate',
    'April ',
    'area ',
    'argue ',
    'argument',
    'arise ',
    'arm ',
    'army',
    'around',
    'arrange ',
    'arrangement',
    'arrest ',
    'arrival ',
    'arrive ',
    'arrow ',
    'art ',
    'article',
    'artificial',
    'artist ',
    'artistic ',
    'as ',
    'ashamed',
    'aside ',
    'ask ',
    'asleep',
    'aspect ',
    'assist ',
    'assistance',
    'assistant ',
    'associate ',
    'association ',
    'assume ',
    'assure ',
    'at ',
    'atmosphere',
    'atom ',
    'attach ',
    'attack ',
    'attempt ',
    'attend ',
    'attention',
    'attitude ',
    'attorney ',
    'attract ',
    'attraction',
    'attractive ',
    'audience ',
    'August ',
    'aunt ',
    'author ',
    'authority',
    'automatic ',
    'autumn ',
    'available',
    'average ',
    'avoid ',
    'awake ',
    'award ',
    'aware ',
    'away ',
    'awful',
    'awkward',
    'baby',
    'back ',
    'background',
    'backward ',
    'bacteria ',
    'bad ',
    'bad-tempered',
    'bag ',
    'baggage',
    'bake ',
    'balance',
    'ball',
    'ban',
    'band',
    'bandage',
    'bank',
    'bar',
    'bargain',
    'barrier',
    'base',
    'basic',
    'basis',
    'bath',
    'bathroom',
    'battery',
    'battle',
    'bay',
    'be',
    'beach',
    'beak',
    'bear',
    'beard',
    'beat',
    'beautiful',
    'beauty',
    'because of',
    'become',
    'bed',
    'bedroom',
    'beef ',
    'beer ',
    'before ',
    'begin ',
    'behalf',
    'behave',
    'behavior',
    'behind ',
    'belief',
    'believe ',
    'bell',
    'belong',
    'below',
    'belt',
    'bend',
    'beneath',
    'benefit',
    'beside',
    'bet ',
    'better',
    'between',
    'beyond',
    'bicycle',
    'bid ',
    'big ',
    'bill ',
    'bin',
    'biology',
    'bird ',
    'birth',
    'birthday',
    'biscuit ',
    'bit ',
    'bite ',
    'bitter ',
    'black ',
    'blade ',
    'blame',
    'blank ',
    'blind ',
    'block ',
    'blonde ',
    'blood ',
    'blow ',
    'blue ',
    'board ',
    'boat ',
    'body ',
    'boil ',
    'bomb ',
    'bone ',
    'book',
    'boot ',
    'border ',
    'bore ',
    'born',
    'borrow',
    'boss ',
    'both ',
    'bother ',
    'bottle',
    'bottom ',
    'bound ',
    'bowl ',
    'box ',
    'boy ',
    'boyfriend',
    'brain ',
    'branch ',
    'brand ',
    'brave ',
    'bread ',
    'break ',
    'breakfast',
    'breast ',
    'breath ',
    'breathe ',
    'breed ',
    'brick ',
    'bridge ',
    'brief',
    'bright ',
    'brilliant',
    'bring ',
    'broad ',
    'broadcast',
    'broken ',
    'brother ',
    'brown ',
    'brush ',
    'bubble ',
    'budget ',
    'build ',
    'bullet ',
    'bunch ',
    'burn ',
    'burst ',
    'bury ',
    'bus ',
    'bush ',
    'business',
    'businessman, businesswoman',
    'busy ',
    'but ',
    'butter',
    'button ',
    'buy ',
    'buyer ',
    'by ',
    'bye ',
    'cabinet',
    'cable',
    'cake',
    'calculate',
    'calculation',
    'call',
    'calm',
    'camera',
    'camp',
    'campaign',
    'can',
    'Cancel',
    'cancer',
    'candidate',
    'candy ',
    'cap',
    'capable',
    'capacity',
    'capital',
    'Captain',
    'capture',
    'car',
    'card ',
    'cardboard',
    'care',
    'career',
    'careful',
    'careless ',
    'carpet ',
    'carrot ',
    'carry',
    'case ',
    'cash ',
    'cast ',
    'castle',
    'cat',
    'catch',
    'category',
    'cause ',
    'CD ',
    'cease',
    'ceiling',
    'celebrate',
    'celebration',
    'cell ',
    'cellphone',
    'cent ',
    'centimetre',
    'Central ',
    'centre ',
    'century ',
    'ceremony ',
    'certain',
    'certificate',
    'chain ',
    'chair ',
    'chairman, chairwoman',
    'challenge ',
    'Chamber ',
    'chance ',
    'change ',
    'channel ',
    'Chapter ',
    'character ',
    'characteristic',
    'charge ',
    'charity ',
    'chart ',
    'chase ',
    'chat ',
    'cheap',
    'cheat ',
    'check ',
    'cheek ',
    'cheerful',
    'cheese ',
    'chemical ',
    'chemist ',
    'chemistry ',
    'cheque ',
    'chest ',
    'chew ',
    'chicken',
    'Chief ',
    'child ',
    'chin ',
    'chip ',
    'chocolate',
    'choice ',
    'choose ',
    'chop ',
    'Church ',
    'cigarette',
    'cinema',
    'circle ',
    'circumstance',
    'citizen ',
    'City ',
    'civil ',
    'claim ',
    'clap ',
    'class ',
    'classic ',
    'classroom ',
    'clean ',
    'clear ',
    'clerk ',
    'clever ',
    'Click ',
    'client ',
    'climate ',
    'climb ',
    'clock ',
    'close ',
    'closet ',
    'cloth ',
    'clothes ',
    'cloud ',
    'club ',
    'coach ',
    'coal ',
    'coast ',
    'coat ',
    'code ',
    'coffee ',
    'coin ',
    'cold ',
    'collapse',
    'colleague ',
    'collect ',
    'collection',
    'college',
    'Color ',
    'column',
    'combination',
    'combine',
    'come ',
    'comedy ',
    'comfort ',
    'comfortable',
    'command ',
    'comment ',
    'commercial',
    'commission ',
    'commit ',
    'commitment',
    'committee ',
    'common ',
    'communicate',
    'communication',
    'community',
    'company ',
    'compare ',
    'comparison',
    'compete for',
    'competition',
    'competitive',
    'complain ',
    'complaint',
    'complete ',
    'complex',
    'complicate',
    'computer ',
    'concentrate',
    'concentration',
    'concept ',
    'concern ',
    'concert ',
    'conclude ',
    'conclusion ',
    'concrete ',
    'condition ',
    'conduct ',
    'conference',
    'confidence ',
    'confident ',
    'confine ',
    'confirm ',
    'conflict ',
    'confront',
    'confuse',
    'confusion',
    'congratulations',
    'congress ',
    'connect ',
    'connection',
    'conscious ',
    'consequence',
    'conservative ',
    'consider ',
    'considerable',
    'consideration ',
    'consist of ',
    'constant ',
    'construct ',
    'construction',
    'consult ',
    'consumer ',
    'contact ',
    'contain ',
    'container ',
    'contemporary',
    'content ',
    'contest ',
    'context ',
    'continent ',
    'continue ',
    'continuous ',
    'contract',
    'contrast ',
    'contribute ',
    'contribution ',
    'control ',
    'convenient',
    'Convention',
    'conventional',
    'conversation ',
    'convert ',
    'convince ',
    'cook ',
    'cooker ',
    'cookie ',
    'cool ',
    'cope (with)',
    'copy ',
    'core',
    'corner',
    'correct ',
    'cost ',
    'cottage',
    'cotton ',
    'cough ',
    'could can',
    'council ',
    'count ',
    'counter ',
    'country ',
    'countryside',
    'county ',
    'couple ',
    'courage ',
    'course ',
    'court ',
    'cousin ',
    'cover ',
    'cow ',
    'crack',
    'craft ',
    'crash ',
    'crazy ',
    'cream ',
    'create ',
    'creature ',
    'credit ',
    'credit card',
    'crime ',
    'criminal',
    'crisis ',
    'crisp',
    'criterion',
    'critical ',
    'criticism ',
    'criticise ',
    'crop',
    'cross ',
    'crowd ',
    'crown ',
    'crucial ',
    'cruel ',
    'crush',
    'cry',
    'cultural',
    'culture ',
    'cup ',
    'cupboard',
    'curb ',
    'cure ',
    'curious',
    'curl ',
    'curly',
    'current',
    'curtain ',
    'curve ',
    'custom ',
    'customer ',
    'customs ',
    'cut ',
    'cycle ',
// dad
// daily
// damage
// damp
// dance
// dancer
// danger
// dangerous
// dare
// dark
// data
// date
// daughter
// day
// dead
// deaf
// deal
// dear
// death
// debate
// debt
// decade
// decay
// December
// decide
// decision
// declare
// decline
// decorate
// decoration
// decorative
// decrease
// deep
// defeat
// Defense
// defend
// define
// definite
// definition
// degree
// delay
// deliberate
// delicate
// delight
// deliver
// delivery
// demand
// demonstrate
// dentist
// deny
// department
// departure
// depend (on)
// deposit
// depress
// depth
// derive
// describe
// description
// desert
// deserve
// design
// desire
// desk
// desperate
// despite
// destroy
// destruction
// detail
// determination
// determine
// develop
// development
// device
// devote
// diagram
// Diamond
// diary
// dictionary
// die
// diet
// difference
// different
// difficult
// difficulty
// dig
// dinner
// direct
// direction
// director
// dirt
// dirty
// disabled
// disadvantage
// disagree
// disagreement
// disappear
// disappoint
// disappointment
// disapproval
// disapprove (of)
// disaster
// disc
// discipline
// discount
// discover
// discovery
// discuss
// discussion
// disease
// disgust
// dish
// dishonest
// disk
// dislike
// dismiss
// display
// dissolve
// distance
// distinguish
// distribute
// distribution
// District
// disturb
// divide
// division
// divorce
// do
// doctor
// document
// dog
// dollar
// domestic
// dominate
// door
// dot
// double
// doubt
// down
// downstairs
// downwards
// dozen
// draft
// drag
// drama
// dramatic
// draw
// drawer
// dream
// dress
// drink
// drive
// driver
// drop
// drug
// drugstore
// drum
// drunk
// dry
// due
// dull
// dump
// during
// dust
// duty
// DVD
// each
// each other
// ear
// early
// earn
// earth
// ease
// east
// eastern
// easy
// eat
// economic
// economy
// edge
// edition
// editor
// educate
// education
// effect
// effective
// efficient
// effort
// e.g.
// egg
// either
// elbow
// elderly
// elect
// election
// electric
// electrical
// electricity
// electronic
// elegant
// element
// elevator
// else
// elsewhere
// email (also e-mail)
// embarrass
// embarrassment
// emerge
// emergency
// emotion
// emotional
// emphasis
// Emphasise
// empire
// employ
// employee
// employer
// employment
// empty
// enable
// encounter
// encourage
// encouragement
// end
// enemy
// energy
// engage
// engine
// engineer
// enjoy
// enjoyable
// enjoyment
// enormous
// enough
// enquiry
// ensure
// enter
// entertain
// entertainer
// entertainment
// enthusiasm
// enthusiastic
// entire
// entitle
// entrance
// entry
// envelope
// environment
// environmental
// equal
// equipment
// equivalent
// error
// escape
// especially
// essay
// essential
// establish
// estate
// estimate
// etc. (full form et cetera)
// euro
// even
// evening
// event
// eventually
// ever
// every
// everyone (also everybody)
// everything
// everywhere
// evidence
// evil
// ex-
// exact
// exaggerate
// exam
// examination
// examine
// example
// excellent
// except
// exception
// exchange
// excite
// excitement
// exclude
// excuse
// Executive
// exercise
// exhibit
// exhibition
// exist
// existence
// exit
// expand
// expect
// expectation
// expense
// expensive
// experience
// experiment
// expert
// explain
// explanation
// explode
// explore
// explosion
// export
// expose
// express
// expression
// extend
// extension
// extensive
// extent
// extra
// extraordinary
// extreme
// eye
// face
// facility
// fact
// factor
// factory
// fail
// failure
// faint
// fair
// faith
// faithful
// fall
// false
// fame
// familiar
// family
// famous
// fan
// fancy
// far
// farm
// farmer
// farther, farthest far
// fashion
// fashionable
// fast
// fasten
// fat
// father
// faucet
// fault
// Favor
// Favorite
// fear
// feather
// feature
// February
// federal
// fee
// feed
// feel
// fellow
// female
// fence
// festival
// fetch
// fever
// few
// field
// fight
// figure
// file
// fill
// film
// final
// finance
// financial
// find
// fine
// finger
// finish
// fire
// firm
// first
// fish
// fit
// fix
// flag
// flame
// flash
// flat
// flavour
// flesh
// flight
// float
// flood
// floor
// flour
// flow
// flower
// flu
// fly
// focus
// fold
// follow
// food
// foot
// football
// for
// force
// forecast
// foreign
// Forest
// forever
// forget
// forgive
// fork
// form
// formal
// former
// formula
// fortune
// forward
// found
// foundation
// frame
// free
// freedom
// freeze
// frequent
// fresh
// Friday
// fridge
// friend
// friendly
// friendship
// frighten
// from
// front
// frozen
// fruit
// fry
// fuel
// full
// fun
// function
// fund
// fundamental
// funeral
// funny
// fur
// furniture
// further, furthest far
// future
// gain
// gallon
// gamble
// game
// gap
// garage
// garbage
// garden
// gas
// gasoline
// gate
// gather
// gear
// general
// generate
// generation
// generous
// gentle
// gentleman
// genuine
// geography
// get
// giant
// gift
// girl
// girlfriend
// give
// glad
// glass
// global
// glove
// glue
// go
// goal
// god
// gold
// good
// goodbye
// goods
// govern
// government
// governor
// grab
// grade
// gradual
// grain
// gram
// grammar
// grand
// grandchild
// granddaughter
// grandfather
// grandmother
// grandparent
// grandson
// grant
// grass
// grateful
// grave
// gray
// great
// green
// grey
// grocery
// ground
// group
// grow
// growth
// guarantee
// guard
// guess
// guest
// guide
// guilty
// gun
// guy
// habit
// hair
// hairdresser
// half
// hall
// hammer
// hand
// handle
// hang
// happen
// happiness
// happy
// hard
// hardly
// harm
// harmful
// harmless
// hat
// hate
// hatred
// have
// he
// head
// headache
// heal
// health
// healthy
// hear
// heart
// heat
// heaven
// heavy
// heel
// height
// hell
// hello
// help
// helpful
// hence
// her
// here
// hero
// herself
// hesitate
// hi
// hide
// high
// highlight
// highway
// hill
// him
// himself
// hip
// hire
// his
// historical
// history
// hit
// hobby
// hold
// hole
// holiday
// hollow
// holy
// home
// homework
// honest
// Honor
// hook
// hope
// horizontal
// horn
// horror
// horse
// hospital
// host
// hot
// hotel
// hour
// house
// household
// how
// however
// huge
// human
// humorous
// Humor
// hungry
// hunt
// hurry
// hurt
// husband
// I
// ice
// ice cream
// idea
// ideal
// identify
// identity
// i.e.
// if
// ignore
// ill
// illegal
// illness
// illustrate
// image
// imaginary
// imagination
// imagine
// immediate
// immoral
// impact
// impatient
// implication
// imply
// import
// importance
// important
// impose
// impossible
// impress
// impression
// impressive
// improve
// improvement
// in
// inability
// inch
// incident
// include
// income
// increase
// indeed
// independence
// independent
// index
// indicate
// indication
// indirect
// individual
// indoors
// industrial
// industry
// inevitable
// infect
// infection
// infectious
// influence
// inform
// informal
// information
// ingredient
// initial
// initiative
// injure
// injury
// ink
// inner
// innocent
// inquiry
// insect
// insert
// inside
// insist (on)
// install
// instance
// instead
// institute
// institution
// instruction
// instrument
// insult
// insurance
// intelligence
// intelligent
// intend
// intention
// interest
// interior
// internal
// International
// Internet
// interpret
// interpretation
// interrupt
// interruption
// interval
// interview
// into
// introduce
// introduction
// invent
// invention
// invest
// investigate
// investigation
// investment
// invitation
// invite
// involve
// involvement
// iron
// irritate
// island
// issue
// it
// item
// itself
// jacket
// jam
// January
// jealous
// jeans
// jelly
// Jewelry
// job
// join
// joint
// joke
// journalist
// journey
// joy
// judge
// Judgment
// juice
// July
// jump
// June
// Junior
// just
// justice
// justify
// keen
// keep
// key
// keyboard
// kick
// kid
// kill
// kilogram
// Kilometer
// kind
// kindness
// king
// kiss
// kitchen
// knee
// knife
// knit
// knock
// knot
// know
// knowledge
// label
// laboratory, lab
// Labor
// lack
// lady
// lake
// lamp
// land
// landscape
// lane
// language
// large
// last
// late
// latter
// laugh
// launch
// law
// lawyer
// lay
// layer
// lazy
// lead
// leader
// leaf
// league
// lean
// learn
// least
// leather
// leave
// lecture
// left
// leg
// legal
// lemon
// lend
// length
// less
// lesson
// let
// letter
// level
// library
// License
// license
// lid
// lie
// life
// lift
// light
// like
// likely
// limit
// line
// link
// lip
// liquid
// list
// listen (to)
// literature
// Liter
// little
// live
// lively
// load
// loan
// local
// locate
// location
// lock
// logic
// logical
// lonely
// long
// look
// loose
// lord
// lorry
// lose
// loss
// lot: a lot (of)
// loud
// love
// lovely
// lover
// low
// loyal
// luck
// lucky
// luggage
// lump
// lunch
// lung
// machine
// machinery
// mad
// magazine
// Magic
// mail
// main
// maintain
// major
// majority
// make
// make-up
// male
// mall
// man
// manage
// management
// manager
// manner
// manufacture
// manufacturer
// many
// map
// March
// march
// mark
// market
// marriage
// marry
// mass
// massive
// master
// match
// mate
// material
// mathematics
// matter
// maximum
// may
// May
// maybe
// mayor
// me
// meal
// mean
// means
// meanwhile
// measure
// measurement
// meat
// media
// medical
// medicine
// medium
// meet
// melt
// member
// membership
// memory
// mental
// mention
// menu
// mere
// mess
// message
// metal
// method
// metre
// midday
// middle
// midnight
// might
// mild
// mile
// military
// milk
// milligram
// Millimeter
// mind
// mine
// mineral
// minimum
// Minister
// Ministry
// minor
// minority
// minute
// mirror
// miss
// mistake
// mix
// mixture
// mobile
// mobile phone (also mobile)
// model
// modern
// mom
// moment
// Monday
// money
// monitor
// month
// mood
// moon
// moral
// more
// moreover
// morning
// most
// mostly
// mother
// motion
// motor
// motorcycle
// mount
// mountain
// mouse
// mouth
// move
// movement
// movie
// movie
// much
// mud
// multiply
// mum
// murder
// muscle
// museum
// music
// musical
// musician
// must
// my
// myself
// mysterious
// mystery
// nail
// naked
// name
// narrow
// nation
// National
// natural
// nature
// navy
// near
// nearby
// nearly
// neat
// necessary
// neck
// need
// needle
// negative
// Neighbour
// Neighborhood
// neither
// nephew
// nerve
// nervous
// nest
// net
// network
// never
// nevertheless
// new
// newly
// news
// newspaper
// next
// nice
// niece
// night
// no
// nobody
// noise
// noisy
// none
// nonsense
// nor
// normal
// north
// northern
// nose
// not
// note
// nothing
// notice
// noticeable
// novel
// November
// now
// nowhere
// nuclear
// number
// nurse
// nut
// obey
// object
// objective
// observation
// observe
// obtain
// obvious
// occasion
// occasionally
// occupy
// occur
// ocean
// o’clock
// October
// odd
// of
// off
// Offense
// offend
// offensive
// offer
// office
// officer
// official
// often
// oil
// OK (also okay)
// old
// old-fashioned
// on
// once
// one
// onion
// only
// onto
// open
// operate
// operation
// opinion
// opponent
// opportunity
// oppose
// opposite
// opposition
// option
// or
// orange
// order
// ordinary
// organ
// Organization
// organize
// origin
// original
// other
// otherwise
// ought to
// our
// ourselves
// out (of)
// outdoors
// outer
// outline
// output
// outside
// outstanding
// oven
// over
// overall
// overcome
// owe
// own
// owner
// pace
// pack
// package
// packet
// page
// pain
// painful
// paint
// painter
// pair
// palace
// pale
// pan
// panel
// pants
// paper
// parallel
// parent
// park
// parliament
// part
// particular
// partly
// partner
// partnership
// party
// pass
// passage
// passenger
// passport
// past
// path
// patience
// patient
// pattern
// pause
// pay
// payment
// peace
// peaceful
// peak
// pen
// pence
// pencil
// penny
// pension
// people
// pepper
// per
// Percent
// perfect
// perform
// performance
// performer
// perhaps
// period
// permanent
// permission
// permit
// person
// personal
// personality
// persuade
// pet
// petrol
// phase
// philosophy
// phone
// photocopy
// photograph
// photographer
// photography
// phrase
// physical
// physics
// piano
// pick
// picture
// piece
// pig
// pile
// pill
// pilot
// pin
// pink
// pint
// pipe
// pitch
// pity
// place
// plain
// plan
// plane
// planet
// plant
// plastic
// plate
// platform
// play
// player
// pleasant
// please
// pleasure
// plenty
// plot
// plug
// plus
// p.m.
// pocket
// poem
// poetry
// point
// poison
// poisonous
// pole
// police
// policy
// Polish
// polite
// political
// politician
// politics
// pollution
// pool
// poor
// pop
// popular
// population
// port
// pose
// position
// positive
// possess
// possession
// possibility
// possible
// post
// post office
// pot
// potato
// potential
// pound
// pour
// powder
// power
// powerful
// practical
// practice
// Practice
// praise
// prayer
// precise
// Predicts
// prefer
// preference
// pregnant
// premises
// preparation
// prepare
// Present
// present
// presentation
// preserve
// president
// press
// pressure
// presumably
// pretend
// pretty
// prevent
// previous
// price
// pride
// priest
// primary
// prime minister
// prince
// princess
// principle
// print
// printer
// prior
// priority
// prison
// prisoner
// private
// prize
// probable
// problem
// procedure
// proceed
// process
// produce
// producer
// product
// production
// profession
// professional
// professor
// profit
// program
// Program
// progress
// project
// promise
// promote
// promotion
// prompt
// pronounce
// pronunciation
// proof
// proper
// property
// proportion
// proposal
// propose
// prospect
// protect
// protection
// protest
// proud
// prove
// provide
// pub
// public
// publication
// publicity
// publish
// pull
// punch
// punish
// punishment
// pupil
// purchase
// pure
// purple
// purpose
// pursue
// push
// put
// qualification
// qualify
// quality
// quantity
// quarter
// Queen
// question
// quick
// quiet
// quit
// quite
// quote
    'race',
    'radio',
    'rail',
    'railway',
    'rain',
    'raise',
    'range',
    'rank',
    'rapid',
    'rare',
    'rate',
    'rather',
    'raw',
    'reach',
    'react',
    'reaction',
    'read',
    'reader',
    'ready',
    'real',
    'realistic',
    'reality',
    'realize',
    'really',
    'rear',
    'reason',
    'reasonable',
    'recallreceipt',
    'receive',
    'recent',
    'reception',
    'reckon',
    'recognition',
    'Recognise',
    'recommend',
    'record',
    'recover',
    'red',
    'reduce',
    'reduction',
    'refer to',
    'reference',
    'reflect',
    'reform',
    'refrigerator',
    'refusal',
    'refuse',
    'regard',
    'region',
    'regional',
    'register',
    'regret',
    'regular',
    'regulation',
    'reject',
    'relate',
    'relation',
    'relationship',
    'relative',
    'relax',
    'release',
    'relevant',
    'relief',
    'religion',
    'religious',
    'rely on',
    'remain',
    'remark',
    'remarkable',
    'remember',
    'remind',
    'remote',
    'removal',
    'remove',
    'rent',
    'repair',
    'repeat',
    'replace',
    'reply',
    'report',
    'represent',
    'representative',
    'reproduce',
    'reputation',
    'request',
    'require',
    'requirement',
    'rescue',
    'research',
    'reservation',
    'reserve',
    'resident',
    'resist',
    'resistance',
    'resolve',
    'resort',
    'resource',
    'respect',
    'respond',
    'response',
    'responsibility',
    'responsible',
    'rest',
    'restaurant',
    'restore',
    'restrict',
    'restriction',
    'result',
    'retain',
    'retire',
    'retirement',
    'return',
    'reveal',
    'reverse',
    'review',
    'revise',
    'revision',
    'revolution',
    'reward',
    'rhythm',
    'rice',
    'rich',
    'rid',
    'ride',
    'rider',
    'ridiculous',
    'right',
    'ring',
    'rise',
    'risk',
    'rival',
    'river',
    'road',
    'rob',
    'rock',
    'role',
    'roll',
    'romantic',
    'roof',
    'room',
    'root',
    'rope',
    'rough',
    'round',
    'route',
    'routine',
    'row',
    'royal',
    'rub',
    'rubber',
    'rubbish',
    'rude',
    'ruin',
    'rule',
    'ruler',
    'Rumor',
    'run',
    'runner',
    'rural',
    'rush',
// sack
// sad
// sadness n.
// safe adj.
// ·       safely adv.
// safety n.
// sail v., n.
// ·       sailing n.
// sailor n.
// salad n.
// salary n.
// sale n.
// salt n.
// salty adj.
// same adj., pron.
// sample n.
// sand n.
// satisfaction n.
// satisfy v.
// ·       satisfied adj.
// ·       satisfying adj.
// Saturday n. (abbr. Sat.)
// sauce n.
// save v.
// ·       saving n.
// say v.
// scale n.
// scare v., n.
// ·       scared adj.
// scene n.
// schedule n., v.
// scheme n.
// school n.
// science n.
// scientific adj.
// scientist n.
// scissors n.
// score n., v.
// scratch v., n.
// scream v., n.
// screen n.
// screw n., v.
// sea n.
// seal n., v.
// search n., v.
// season n.
// seat n.
// second det., ordinal number, adv., n.
// secondary adj.
// secret adj., n.
// ·       secretly adv.
// secretary n.
// section n.
// sector n.
// secure adj., v.
// security n.
// see v.
// seed n.
// seek v.
// seem linking v.
// select v.
// selection n.
// self n.
// ·       self- combining form
// sell v.
// senate n.
// senator n.
// send v.
// senior adj., n.
// sense n.
// sensible adj.
// sensitive adj.
// sentence n.
// separate adj., v.
// ·       separated adj.
// ·       separately adv.
// separation n.
// September n. (abbr. Sept.)
// series n.
// serious adj.
// ·       seriously adv.
// servant n.
// serve v.
// service n.
// session n.
// set n., v.
// settle v.
// several det., pron.
// severe adj.
// ·       severely adv.
// sew v.
// ·       sewing n.
// sex n.
// sexual adj.
// ·       sexually adv.
// shade n.
// shadow n.
// shake v., n.
// shall modal v.
// shallow adj.
// shame n.
// shape n., v.
// ·       shaped adj.
// share v., n.
// sharp adj.
// ·       sharply adv.
// shave v.
// she pron.
// sheep n.
// sheet n.
// shelf n.
// shell n.
// shelter n., v.
// shift v., n.
// shine v.
// shiny adj.
// ship n.
// shirt n.
// shock n., v.
// ·       shocking adj.
// ·       shocked adj.
// shoe n.
// shoot v.
// ·       shooting n.
// shop n., v.
// ·       shopping n.
// short adj.
// shortly adv.
// shot n.
// should modal v.
// shoulder n.
// shout v., n.
// show v., n.
// shower n.
// shut v., adj.
// shy adj.
// sick adj.
// ·       be sick (BrE)
// ·       feel sick (especially BrE)
// side n.
// sideways adj., adv.
// sight n.
// sign n., v.
// signal n., v.
// signature n.
// significant adj.
// ·       significantly adv.
// silence n.
// silent adj.
// silk n.
// silly adj.
// silver n., adj.
// similar adj.
// ·       similarly adv.
// simple adj.
// ·       simply adv.
// since prep., conj., adv.
// sincere adj.
// ·       sincerely adv.
// ·       Yours sincerely (BrE)
// sing v.
// ·       singing n.
// singer n.
// single adj.
// sink v.
// sir n.
// sister n.
// sit v.
// ·       sit down
// site n.
// situation n.
// size n.
// ·       -sized
// skilful (BrE) (NAmE skillful) adj.
// ·       skilfully (BrE) (NAmE skillfully) adv.
// skill n.
// ·       skilled adj.
// skin n.
// skirt n.
// sky n.
// sleep v., n.
// sleeve n.
// slice n., v.
// slide v.
// slight adj.
// ·       slightly adv.
// slip v.
// slope n., v.
// slow adj.
// ·       slowly adv.
// small adj.
// smart adj.
// smash v., n.
// smell v., n.
// smile v., n.
// smoke n., v.
// ·       smoking n.
// smooth adj.
// ·       smoothly adv.
// snake n.
// snow n., v.
// so adv., conj.
// ·       so that
// soap n.
// social adj.
// ·       socially adv.
// society n.
// sock n.
// soft adj.
// ·       softly adv.
// software n.
// soil n.
// soldier n.
// solid adj., n.
// solution n.
// solve v.
// some det., pron.
// somebody (also someone) pron.
// somehow adv.
// something pron.
// sometimes adv.
// somewhat adv.
// somewhere adv.
// son n.
// song n.
// soon adv.
// ·       as soon as
// sore adj.
// sorry adj.
// sort n., v.
// soul n.
// sound n., v.
// soup n.
// sour adj.
// source n.
// south n., adj., adv.
// southern adj.
// space n.
// spare adj., n.
// speak v.
// ·       spoken adj.
// speaker n.
// special adj.
// ·       specially adv.
// specialist n.
// specific adj.
// ·       specifically adv.
// speech n.
// speed n.
// spell v., n.
// ·       spelling n.
// spend v.
// spice n.
// spicy adj.
// spider n.
// spin v.
// spirit n.
// spiritual adj.
// spite n.: in spite of
// split v., n.
// spoil v.
// spoken speak
// spoon n.
// sport n.
// spot n.
// spray n., v.
// spread v.
// spring n.
// square adj., n.
// squeeze v., n.
// stable adj., n.
// staff n.
// stage n.
// stair n.
// stamp n., v.
// stand v., n.
// ·       stand up
// standard n., adj.
// star n., v.
// stare v., n.
// start v., n.
// state n., adj., v.
// statement n.
// station n.
// statue n.
// status n.
// stay v., n.
// steady adj.
// ·       steadily adv.
// ·       unsteady adj.
// steal v.
// steam n.
// steel n.
// steep adj.
// ·       steeply adv.
// steer v.
// step n., v.
// stick v., n.
// ·       stick out
// sticky adj.
// stiff adj.
// ·       stiffly adv.
// still adv., adj.
// sting v., n.
// stir v.
// stock n.
// stomach n.
// stone n.
// stop v., n.
// store n., v.
// storm n.
// story n.
// stove n.
// straight adv., adj.
// strain n.
// strange adj.
// ·       strangely adv.
// stranger n.
// strategy n.
// stream n.
// street n.
// strength n.
// stress n., v.
// ·       stressed adj.
// stretch v.
// strict adj.
// ·       strictly adv.
// strike v., n.
// ·       striking adj.
// string n.
// strip v., n.
// stripe n.
// ·       striped adj.
// stroke n., v.
// strong adj.
// ·       strongly adv.
// structure n.
// struggle v., n.
// student n.
// studio n.
// study n., v.
// stuff n.
// stupid adj.
// style n.
// subject n.
// substance n.
// substantial adj.
// ·       substantially adv.
// substitute n., v.
// succeed v.
// success n.
// successful adj.
// ·       successfully adv.
// ·       unsuccessful adj.
// such det., pron.
// ·       such as
// suck v.
// sudden adj.
// ·       suddenly adv.
// suffer v.
// ·       suffering n.
// sufficient adj.
// ·       sufficiently adv.
// sugar n.
// suggest v.
// suggestion n.
// suit n., v.
// ·       suited adj.
// suitable adj.
// suitcase n.
// sum n.
// summary n.
// summer n.
// sun n.
// Sunday n. (abbr. Sun.)
// superior adj.
// supermarket n.
// supply n., v.
// support n., v.
// supporter n.
// suppose v.
// sure adj., adv.
// ·       make sure
// ·       surely adv.
// surface n.
// surname n. (especially BrE)
// surprise n., v.
// ·       surprising adj.
// ·       surprisingly adv.
// ·       surprised adj.
// surround v.
// ·       surrounding adj.
// ·       surroundings n.
// survey n., v.
// survive v.
// suspect v., n.
// suspicion n.
// suspicious adj.
// swallow v.
// swear v.
// ·       swearing n.
// sweat n., v.
// sweater n.
// sweep v.
// sweet adj., n.
// swell v.
// ·       swelling n.
// ·       swollen adj.
// swim v.
// ·       swimming n.
// swimming pool n.
// swing n., v.
// switch n., v.
// ·       switch sth off
// ·       switch sth on
// swollen swell
// symbol n.
// sympathetic adj.
// sympathy n.
// system n.
// table n.
// tablet n.
// tackle v., n.
// tail n.
// take v.
// ·       take sth off
// ·       take (sth) over
// talk v., n.
// tall adj.
// tank n.
// tap v., n..
// tape n.
// target n.
// task n.
// taste n., v.
// tax n., v.
// taxi n.
// tea n.
// teach v.
// ·       teaching n.
// teacher n.
// team n.
// tear /te?(r), NAmE ter/ v., n.
// tear /t??(r), NAmE t?r/ n.
// technical adj.
// technique n.
// technology n.
// telephone (also phone) n., v.
// television (also TV) n.
// tell v.
// temperature n.
// temporary adj.
// ·       temporarily adv.
// tend v.
// tendency n.
// tension n.
// tent n.
// term n.
// terrible adj.
// ·       terribly adv.
// test n., v.
// text n.
// than prep., conj.
// thank v.
// ·       thanks exclamation, n.
// ·       thank you exclamation, n.
// that det., pron., conj.
// the definite article
// theatre (BrE) (NAmE theater) n.
// their det.
// ·       theirs pron.
// them pron.
// theme n.
// themselves pron.
// then adv.
// theory n.
// there adv.
// therefore adv.
// they pron.
// thick adj.
// ·       thickly adv.
// thickness n.
// thief n.
// thin adj.
// thing n.
// think v.
// ·       thinking n.
// thirsty adj.
// this det., pron.
// thorough adj.
// ·       thoroughly adv.
// though conj., adv.
// thought n.
// thread n.
// threat n.
// threaten v.
// ·       threatening adj.
// throat n.
// through prep., adv.
// throughout prep., adv.
// throw v.
// ·       throw sth away
// thumb n.
// Thursday n. (abbr. Thur., Thurs.)
// thus adv.
// ticket n.
// tidy adj., v.
// ·       untidy adj.
// tie v., n.
// ·       tie sth up
// tight adj., adv.
// ·       tightly adv.
// till until
// time n.
// timetable n. (especially BrE)
// tin n.
// tiny adj.
// tip n., v.
// tire v. (BrE, NAmE), n. (NAmE) (BrE tyre)
// ·       tiring adj.
// ·       tired adj.
// title n.
// to prep., infinitive marker
// today adv., n.
// toe n.
// together adv.
// toilet n.
// tomato n.
// tomorrow adv., n.
// ton n.
// tone n.
// tongue n.
// tonight adv., n.
// tonne n.
// too adv.
// tool n.
// tooth n.
// top n., adj.
// topic n.
// total adj., n.
// ·       totally adv.
// touch v., n.
// tough adj.
// tour n., v.
// tourist n.
// towards (also toward especially in NAmE) prep.
// towel n.
// tower n.
// town n.
// toy n., adj.
// trace v., n.
// track n.
// trade n., v.
// ·       trading n.
// tradition n.
// traditional adj.
// ·       traditionally adv.
// traffic n.
// train n., v.
// ·       training n.
// transfer v., n.
// transform v.
// translate v.
// translation n.
// transparent adj.
// transport n. (BrE) (NAmE transportation)
// ·       transport v. (BrE, NAmE)
// trap n., v.
// travel v., n.
// traveller (BrE) (NAmE traveler) n.
// treat v.
// treatment n.
// tree n.
// trend n.
// trial n.
// triangle n.
// trick n., v.
// trip n., v.
// tropical adj.
// trouble n.
// trousers n. (especially BrE)
// truck n. (especially NAmE)
// true adj.
// ·       truly adv.
// ·       Yours Truly (NAmE)
// trust n., v.
// truth n.
// try v.
// tube n.
// Tuesday n. (abbr. Tue., Tues.)
// tune n., v.
// tunnel n.
// turn v., n.
// TV television
// twice adv.
// twin n., adj.
// twist v., n.
// ·       twisted adj.
// type n., v.
// typical adj.
// ·       typically adv.
// tyre n. (BrE) (NAmE tire)
// ugly adj.
// ultimate adj.
// ·       ultimately adv.
// umbrella n.
// unable able
// unacceptable acceptable
// uncertain certain
// uncle n.
// uncomfortable comfortable
// unconscious conscious
// uncontrolled control
// under prep., adv.
// underground adj., adv.
// underneath prep., adv.
// understand v.
// ·       understanding n.
// underwater adj., adv.
// underwear n.
// undo do
// unemployed employ
// unemployment employment
// unexpected, unexpectedly expect
// unfair, unfairly fair
// unfortunate adj.
// ·       unfortunately adv.
// unfriendly friendly
// unhappiness happiness
// unhappy happy
// uniform n., adj.
// unimportant important
// union n.
// unique adj.
// unit n.
// unite v.
// ·       united adj.
// universe n.
// university n.
// unkind kind
// unknown know
// unless conj.
// unlike like
// unlikely likely
// unload load
// unlucky lucky
// unnecessary necessary
// unpleasant pleasant
// unreasonable reasonable
// unsteady steady
// unsuccessful successful
// untidy tidy
// until (also till) conj., prep.
// unusual, unusually usual
// unwilling, unwillingly willing
// up adv., prep.
// upon prep.
// upper adj.
// upset v., adj.
// ·       upsetting adj.
// upside down adv.
// upstairs adv., adj., n.
// upwards (also upward especially in NAmE) adv.
// ·       upward adj.
// urban adj.
// urge v., n.
// urgent adj.
// us pron.
// use v., n.
// ·       used adj.
// ·       used to sth/to doing sth
// ·       used to modal v.
// useful adj.
// useless adj.
// user n.
// usual adj.
// ·
// o   usually adv.
// o   unusual adj.
// o   unusually adv.
// vacation n.
// valid adj.
// valley n.
// valuable adj.
// value n., v.
// van n.
// variation n.
// variety n.
// various adj.
// vary v.
// ·       varied adj.
// vast adj.
// vegetable n.
// vehicle n.
// venture n., v.
// version n.
// vertical adj.
// very adv.
// via prep.
// victim n.
// victory n.
// video n.
// view n., v.
// village n.
// violence n.
// violent adj.
// ·       violently adv.
// virtually adv.
// virus n.
// visible adj.
// vision n.
// visit v., n.
// visitor n.
// vital adj.
// vocabulary n.
// voice n.
// volume n.
// vote n., v.
    'wage',
    'waist',
    'wait',
    'waiter, waitress',
    'wake (up)',
    'walk',
    'wall ',
    'wallet ',
    'wander ',
    'want ',
    'war ',
    'warm ',
    'warmth ',
    'warn ',
    'wash ',
    'waste ',
    'watch ',
    'water ',
    'wave ',
    'way ',
    'we ',
    'weak ',
    'weakness ',
    'wealth ',
    'weapon ',
    'wear',
    'weather',
    'web',
    'website',
    'wedding',
    'Wednesday',
    'week',
    'weekend ',
    'weekly',
    'weigh ',
    'weight ',
    'welcome',
    'well ',
    'well known know',
    'west ',
    'western ',
    'wet ',
    'what ',
    'whatever ',
    'wheel ',
    'when',
    'whenever ',
    'where ',
    'whereas ',
    'wherever ',
    'whether ',
    'which ',
    'while ',
    'whilst',
    'whisper ',
    'whistle',
    'white ',
    'who ',
    'whoever ',
    'whole ',
    'whom ',
    'whose ',
    'why ',
    'wide ',
    'width ',
    'wife ',
    'wild ',
    'will',
    'willing ',
    'willingness ',
    'win',
    'wind ',
    'window ',
    'wine ',
    'wing ',
    'winner ',
    'winter',
    'wire ',
    'wise ',
    'wish',
    'with',
    'withdraw',
    'within ',
    'without',
    'witness',
    'woman',
    'wonder',
    'wonderful',
    'wood',
    'wooden',
    'wool',
    'word',
    'work',
    'worker',
    'world',
    'worry',
    'worse, worst bad',
    'worship',
    'worth',
    'would',
    'wound',
    'wrap',
    'wrist',
    'write',
    'writer',
    'wrong',
    'yard',
    'yawn',
    'yeah',
    'year',
    'yellow',
    'yes',
    'yesterday',
    'yet',
    'you',
    'young',
    'your',
    'yourself',
    'youth',
    'zero',
    'zone',
  ];

  List<String> getAllWords() => _words;
}
