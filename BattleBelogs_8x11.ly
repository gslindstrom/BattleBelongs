\version "2.22.1"

\include "header.ly"
\include "template_notes.ly"

\include "chords.ly"
\include "notes_sa.ly"
\include "notes_tb.ly"
\include "notes_piano_treble.ly"
\include "notes_piano_bass.ly"
\include "notes_rhythm.ly"
\include "notes_trumpet_i_ii.ly"
\include "notes_trumpet_iii.ly"
\include "notes_trombone_i_ii.ly"
\include "notes_trombone_bass.ly"
\include "notes_percussion.ly"
\include "notes_tympani.ly"
\include "notes_horn_i_ii.ly"
\include "notes_woodwinds.ly"
\include "notes_violyn.ly"
\include "notes_viola.ly"
\include "notes_cello.ly"

\header{
  poet = "Conductor's Score"
}

\paper{
   #(set-paper-size "letter")
   top-margin = 0.50\in
   bottom-margin = 0.50\in
   left-margin = 1.00\in
   right-margin = 0.50\in
}

#(set-global-staff-size 14)


verseOne = \lyricmode{When all I see is the bat-  tle,
                      You see my vic- to- ry.

                      When all I see is the moun- tain,
                      You see a moun- tain moved.

                      And as I walk through the shad- ow
                      Your love sur- rounds me.

                      There's noth- ing to fear now
                      for I am safe   with  you.

           So when I fight, I'll fight on my knees
                     with my hands lift- ed high.
                     Oh God, the bat- tle be- longs to You.
                     And ev- 'ry fear I lay at Your feet.
                     I'll sing through the night.
                     Oh God, the bat- tle be-  longs to You.
                     
                     And if You are for me, who can be a- gainst me?
                     For Je- sus, there's noth- thing im- pos- si- ble for You.

}

%%%%%%%%%% Score for Layout (transposed instrumentation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score{
  <<
    \new StaffGroup = "Vocal" <<
      \new Staff \with {instrumentName = "SA"
                        shortInstrumentName = "SA"}{\notes_sa}\addlyrics{\verseOne}
  
      \new Staff \with {instrumentName = "TB"
                        shortInstrumentName = "TB"}{\notes_tb}  
    >>
    \new PianoStaff<<
      \new Staff \with {instrumentName = "Piano"
                        shortInstrumentName = "Piano"}
      {
        \notes_piano_treble
      }
      \new Staff = "lh"{
        \notes_piano_bass
      }
    >>
    \new Staff \with {instrumentName = "Rhythm"
                      shortInstrumentName = "Rhythm"}
    <<
      \notes_rhythm
    >>
    \new StaffGroup = "Brass" <<
      \new Staff \with {instrumentName = "Trumpet 1&2"
                        shortInstrumentName = "Tpt 1&2"}
      {
        \notes_trumpet_i_ii
      }
      \new Staff \with {instrumentName = "Tpt 3/Alto Sax"
                        shortInstrumentName = "Tpt3/Alto"}
      {
        \notes_trumpet_iii
      }
      \new Staff \with {instrumentName = "Tbn 1&2/Tenor Sax"
                        shortInstrumentName = "Tbn 1&2/Tenor"}
      {
        \notes_trombone_i_ii
      }
      \new Staff \with {instrumentName = "Bass Tbn/Tuba"
                        shortInstrumentName = "B Tbn/Tuba"}
      {
        \notes_trombone_bass
      }
    >>
    \new StaffGroup = "Percussion"<<
      \new DrumStaff \with {instrumentName = "Percussion"
                            shortInstrumentName = "Perc."}
      {
        \notes_percussion
      }
      \new Staff \with {instrumentName = "Tympani"
                        shortInstrumentName = "Tymp."}
      {
        \notes_tympani
      }
    >>
    \new Staff \with {instrumentName = "Horn 1-2"
                      shortInstrumentName = "Hrn 1-2"}
    {
      \notes_horn_i_ii
    }
    \new Staff \with {instrumentName = "Woodwinds"
                      shortInstrumentName = "WW"}
    {
      \notes_woodwinds
    }
    \new StaffGroup = "Strings"<<
      \new Staff \with {instrumentName = "Violyn"
                        shortInstrumentName = "Vln"}
      {
        \notes_violyn
      }
      \new Staff \with {instrumentName = "Viola"
                        shortInstrumentName = "Vla"}
      {
        \notes_viola
      }
      \new Staff \with {instrumentName = "Cello-Bass"
                        shortInstrumentName = "Vc-D.B."}
      {
        \notes_cello
      }
    >>
>>
\layout { }

}
 