\version "2.19.83"

\header {
  title = \markup{\override #'(font-family . typewriter) "理解と愛情と優しい眼差し"} 
  subtitle = \markup{\override #'(font-family . typewriter) "中二病でも恋がしたい！(OST)"}
  composer = \markup{\override #'(font-family . typewriter) "松田彬人"}
}

fourSectsUpOne = \relative c'' {
  <bes d f>2 bes'
  r8 <ees, c'> <f d'>[<g ees'>] <f d'>4 <ees c'>
  <bes d f>2 <d bes'>
  r1
}

fourSectsDownOne = \relative c' {
  bes2 r2
  <ges' ees'>2 r2
  bes,2 r2
  <ges' ees'>2 r2
}

fourSectsUpTwo = \relative c'' {
  <bes d f>2 bes'
  r8 <ees, c'> <f d'>[<g ees'>] <a f'>4 <g ees'>
  <f bes d>2 <d f>
  r1
}

fourSectsDownTwo = \relative c'' {
  bes2 r2
  <ges ees'>2 r2
  <d f bes> r2
  <ges ees'> <a c>
}

fourSectsUpThree = \relative c'' {
  bes2 d8 ees d c
  bes c d bes g4~ g8 g8
  \key g \major
  d'2 c4~ c8 g8
  d'2 r4 <b b'>8 <c c'>
}

fourSectsDownThree = \relative c'' {
  g,8 bes d4 ges,8 bes d4
  f,8 bes d bes c4~ c8 r8
  \key g \major
  \clef bass
  a, e' g b c4 r4
  d,8 a' d g <a, d fis>2
}

fourSectsUpFour = \relative c'' {
  <d d'>2 r4 <b b'>8 <c c'>
  <d d'>2 r4 <b b'>8 <c c'>
  <d d'>4 <g g'> <fis fis'> <d d'>
  <b b'>2 r4 <a a'>8 <b b'>
}

fourSectsDownFour = \relative c {
  c,8 g' e' g c g e c
  c,8 a' fis' a d a fis d
  b, fis' d' fis b fis d b
  e, b' fis' g d' g, fis d
  a e' b' c g' c, b e,
}

fourSectsUpFive = \relative c'' {
  <c c'>2 r8 <b b'> <a a'>[<g g'>]
  <fis fis'>2 <fis' fis'>4 <e e'>
  <e e'>4~ <e e'>8 <d d'>8 <d d'>4~ <d d'>8 <c c'>8
  <b b'>2 r4 <b b'>8 <c c'>
}

fourSectsDownFive = \relative c {
  d, a' e' fis c' fis, e a,
  g d' g a b a g d
  g, d' b' d g d b g
  c,, g' e' g c g e c
}

fourSectsUpSix = \relative c'' {
  <d d'>2 r4 <b b'>8 <c c'>
  <d d'>2 r4 <b b'>8 <c c'>
  <d d'>4 <a' a'> <fis fis'> <g g'>
  <b, b'>2 r4 <a a'>8 <b b'>
}

fourSectsDownSix = \relative c {
  c,8 a' fis' a d a fis d
  b, fis' d' fis d' fis, d b
  e, b' fis' g d' g, fis d
  a e' b' c g' c, b e,
}

fourSectsUpSeven = \relative c' {
  <c' c'>2 r8 <b b'> <a a'>[<g g'>]
  <fis fis'>2 <e e'>4 <fis fis'>
  <g g'>1
  r1
}

fourSectsDownSeven = \relative c {
  d,8 a' e' fis d2
  g,8 d' a' b~ b2
  g,8 d' a' c~ c2
}

fourSectsUpEight = \relative c' {
  <g' b g'>1
}

fourSectsDownEight = \relative c' {
  <g, d'>1
}

\score {
  \new PianoStaff {
    \time 4/4
    <<
      \context Staff = "up" {
        \tempo 4 = 70
        \key bes \major
        {
          \fourSectsUpOne
          \fourSectsUpTwo
          \break
          \fourSectsUpThree
          \break
          \fourSectsUpFour
          \break
          \fourSectsUpFive
          \break
          \fourSectsUpSix
          \break
          \fourSectsUpSeven
          \fourSectsUpEight
        }
      }
      \context Staff = "down" {
        \key bes \major
        {
          \fourSectsDownOne
          \fourSectsDownTwo
          \fourSectsDownThree
          \fourSectsDownFour
          \fourSectsDownFive
          \fourSectsDownSix
          \fourSectsDownSeven
          \fourSectsDownEight
        }
      }
    >>
  }
  \layout {
 
  }
  \midi {
    \tempo 4 = 70
  }
}