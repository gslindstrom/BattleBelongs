
notes_percussion = \drummode {

  \time 4/4
  \tempo 4=\tempo_m_i
  \set countPercentRepeats = ##t
  \set Score.markFormatter = #format-mark-box-numbers
  \clef treble{
  \compressMMRests{

    tomml16^"Shaker" tomml tomml tomml tomml tomml tomml tomml tomml tomml tomml tomml tomml tomml tomml tomml
    tomml tomml tomml tomml tomml tomml tomml tomml  tomml tomml tomml tomml  tomml tomml tomml tomml
    tomml16 tomml tomml tomml  tomml tomml tomml tomml  tomml tomml tomml tomml  tomml tomml tomml tomml
    tomml16 tomml tomml tomml  tomml tomml tomml tomml^"Sus. Cymbal"  tomml tomml tomml tomml  
                                             <<{tomh4:16}\\{tomml16 tomml tomml tomml}>>
    
    \bar "||"

    \mark\default % ======================================================= 1. Verse =====
    \barNumberCheck #5
    \tempo "Verse"
    R1*6|
    r4^Tamborine <<{tommh2.:32}{s4\< s s\!}>>|
    <<{tommh2 s2}
      \\
      {tomml16^"+Shaker" tomml tomml tomml tomml tomml tomml tomml tomml tomml tomml tomml tomml tomml tomml tomml}
    >>|
    <<
      {s2. tommh4}\\
      {tomml16 tomml tomml tomml  tomml tomml tomml tomml  tomml tomml tomml tomml  tomml tomml tomml tomml}
    >>|
    \repeat percent 2{
    tomml16 tomml tomml tomml  tomml tomml tomml tomml  tomml tomml tomml tomml  tomml tomml tomml tomml|
    <<
      {s2. tomml4}\\
      {tomml16 tomml tomml tomml  tomml tomml tomml tomml  tomml tomml tomml tomml  tomml tomml tomml tomml}
    >>|
    }
    tomml16 tomml tomml tomml  tomml tomml tomml tomml  tomml tomml tomml tomml  tomml tomml tomml tomml|

    tomml16 tomml tomml^"Sus. Cymbal" tomml tomml tomml tomml tomml   
               <<
                 {<<{tomh2:16}{s8\< s4 s8\!}>>}
                 \\
                 {tomml16 tomml tomml tomml tomml tomml tomml tomml}
               >>||
    
    
   
    \mark\default % ======================================================= 2. Chorus ====
    \barNumberCheck #20
    \tempo "Chorus"
    R1*7
    \time 2/4 
    <<{tomh2:32}{s8\< s4 s8\f}>>
    \time 4/4 
    <<
      {s4^"Shaker/Tamb." s2 tomh4}
      \\
      {tomml16 tomml tomml tomml  tomml tomml tomml tomml  tomml tomml tomml tomml  tomml tomml tomml tomml}
    >>
    <<
      {s2. tomh4}
      \\
      {tomml16 tomml tomml tomml  tomml tomml tomml tomml  tomml tomml tomml tomml  tomml tomml tomml tomml}
    >>

\bar "||"
    
    \mark\default % ======================================================= 3. Verse =====
    \barNumberCheck #30
    \tempo "Verse"
    R1*15\bar "||"
    
    \mark\default %======================================================== 4. Chorus ====
    \barNumberCheck #45
    \tempo "Chorus"
    <<{R1}{s4\mark\markup { \musicglyph "scripts.segno" } s2.}>>
    R1*5
    R1\mark\markup { \musicglyph "scripts.coda" }
    \time 2/4 R1*2/4
    \time 4/4 R1
    
    \mark\default % ======================================================= 5. Bridge ====
    \barNumberCheck #54
    \tempo "Bridge"
    \repeat volta 2 {R1*6}
    \alternative{
      {R1*2}
      {R1}
    } R1 \bar "||"
    
    \mark\default % ======================================================= 6. Bridge ====
    \barNumberCheck #64
    \tempo "Bridge"
    R1*9|
    R1\bar "||"
    
    %=====================================================================================
    %=== CODA === CODA === CODA === CODA === CODA === CODA === CODA === CODA === CODA ====
    %=====================================================================================
    \coda_transition   
    \barNumberCheck #74
    \tempo "Coda"
    R1*2|
    \time 2/4 R1*2/4|
    R1*3 \bar "|."
    
}}}