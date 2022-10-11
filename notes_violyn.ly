notes_violyn = \relative c'' {
  \key a \major
  \time 4/4
  \tempo 4=\tempo_m_i
  \set countPercentRepeats = ##t
  \set Score.markFormatter = #format-mark-box-numbers
  \clef treble{
  \compressMMRests{
    <e e'>1\f|
    <e e'>|
    <e e'>|
    <e e'>\bar "||"
    
    \mark\default % ======================================================= 1. Verse =====
    \barNumberCheck #5
    \tempo "Verse"
    R1*7|
    <a,, cs>1\mp~|
    <a cs>|
    <a d>~|
    <a d>
    <a cs>1~|
    <a cs>2 <gs b>|
    a1~|
    <<{a1}{s8 s8\< s2 s8 s8\!}>>\bar "||"
    
    \mark\default % ======================================================= 2. Chorus ====
    \barNumberCheck #20
    \tempo "Chorus"
    R1*7
    \time 2/4 
    r4 a16\<( b32 cs d e fs gs)|
    \time 4/4 
    a1\f~|
    a1 \bar "||"
    
    \mark\default % ======================================================= 3. Verse =====
    \barNumberCheck #30
    \tempo "Verse"
    <cs, e>1\mf~|
    <cs e>2. <a cs>4|
    <a d>1~|
    <a d>2 a'4 gs|
    
 
 
 R1*11\bar "||"
    
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