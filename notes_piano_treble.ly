xx = {a,16 d e a}
xy = {a,16 b e gs}

notes_piano_treble = \relative c' {
  \key a \major
  \time 4/4
  \tempo 4=\tempo_m_i
  \set countPercentRepeats = ##t
  \set Score.markFormatter = #format-mark-box-numbers
  \clef treble{
  \compressMMRests{
    <a cs e>4\f <a cs e> <a cs e> <a b e>|
    <a cs e>    <a cs e> <e a d>  <e a cs>|
    <a cs e>4   <a cs e> <a cs e> <a b e>|
    <a cs e>    <a cs e> <e a d>  <e a cs>\bar "||"
    
    \mark\default % ======================================================= 1. Verse =====
    \barNumberCheck #5
    \tempo "Verse"
    <e a cs>1\mp|
    <a cs e>2. \clef bass <e a cs>4|
    <fs a d>1|
    <fs a d>4 a8 <fs a d>8~<fs a d>4 <fs a cs>4|
    <e a cs>1
    <e a>2
    <e gs b>|
    <d e a>1|
    <e a cs>2.~<e a cs>8 e8|
    <e a cs>1|
    <d fs a>1|
    <d fs a>4
    a'8 <fs a d>8~<fs a d>4 <fs a cs>4|
    <e a cs>1|
    <e a>2 <e gs b>|
    \clef treble <e a cs>8 a <a e>4~<a e>8\< a <a e>4~|
    <a e>8 a <a e>4~<a e>8 a <a e>4\!\bar "||"
    
    \mark\default % ======================================================= 2. Chorus ====
    \barNumberCheck #20
    \tempo "Chorus"
    <a d fs>2\mf <a cs e>|
    <b e gs><cs fs a>|
    <a d fs><cs e gs>|
    <b e gs><cs fs a>|
    <a d fs><a cs e>|
    <b e gs><cs fs a>|
    <a d fs><a cs e>|
    \time 2/4 
    <b e gs>2|
    \time 4/4 
    <a cs e>4\f<a cs e><a cs e><e a b>|
    <e a cs><e a cs><e a d><e a cs>\bar "||"
    
    \mark\default % ======================================================= 3. Verse =====
    \barNumberCheck #30
    \tempo "Verse"
    a'16\mf d e a \xx\xx\xx|
    \xx\xx\xx\xx|
    \xx\xx\xx\xx|
    \xx\xx\xx\xx|
    \xx\xx\xx\xx|
    \xx\xx\xy\xy|
    \xx\xx\<\xx\xx\!|

R1*8\bar "||"
    
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