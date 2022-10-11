\version "2.22.1"

date = #(strftime "%m-%d-%Y" (localtime (current-time)))

\header {
  %dedication = ""
  title = "Battle Belongs"
  subtitle = "(based on the Phil Wickham single \"Battle Belongs\")"
  %instrument = "Trumpet 1 in Bb"
  composer = "Brian Johnson and Phil Wickham"
  arranger = "Arr. Dan Galbraith"
  copyright = "Copyright 2020 Phil Wickham Music"
  tagline = "Engraved by Greg Lindstrom (gslindstrom@gmail.com) using Frecobaldi 2.22.1"
  \language "english"
}

#(set-global-staff-size 16)

myCoda = \mark \markup { \musicglyph #"scripts.coda" }
myDS = \mark \markup { \musicglyph #"scripts.segno" }
%myDSalCoda = \override Score.RehearsalMark #'self-alignment-X = #RIGHT \mark "D.S. al Coda" 


\layout {
  \context {
    \Staff
    \consists Measure_counter_engraver
  }
}

\paper{
   #(set-paper-size "letter")
   top-margin = 0.50\in
   bottom-margin = 0.50\in
   left-margin = 0.50\in
   right-margin = 0.50\in
}


tempo_m_i = #'81


coda_transition = {
  % Set segno sign as rehearsal mark and adjust size if needed
  \once \override Score.RehearsalMark.break-visibility =
  #begin-of-line-invisible
  % \once \override Score.RehearsalMark.font-size = #3
  \mark \markup { \musicglyph "scripts.segno" }
    
  \cadenzaOn
  \stopStaff
  
     % text line-aligned
     % ==================
     % Move text to the desired position
     % \once \override TextScript.extra-offset = #'( 2 . -3.5 )
     % ^\markup { D.S. al Coda } }
  
     \repeat unfold 1{
       s1
       \bar ""
     }
     
     %\once \override TextScript.extra-offset = #'( 0 . -3.0 )
     %\once \override TextScript.word-space = #1.5
%     \once \override Score.RehearsalMark.padding = 0
%     \once \override Score.RehearsalMark.outside-staff-padding = 0
%     <>^\markup { \center-column { "D.S. al Coda"
%       \line {
%         \musicglyph "scripts.coda"
%         \musicglyph "scripts.tenuto"
%         \musicglyph "scripts.coda"} } }

     \repeat unfold 3{
       s1
       \bar ""
     }

 \startStaff
 \cadenzaOff
 \break
 
 % Show up, you clef and key!
 \once \override Staff.KeySignature.break-visibility = #end-of-line-invisible
 \once \override Staff.Clef.break-visibility = #end-of-line-invisible
 
 % Coda on new line, use this:
 \once \override Score.RehearsalMark.extra-offset = #'( -5 . .5 )

 \once \override Score.RehearsalMark.font-size = #5
 \mark \markup { \musicglyph "scripts.coda" }
}