notes_woodwinds = \relative c' {
  \key a \major
  \time 4/4
  \tempo 4=\tempo_m_i
  \set countPercentRepeats = ##t
  \set Score.markFormatter = #format-mark-box-numbers
  \clef treble{
  \compressMMRests{
    R1*4\bar "||"
    \mark\default % ======================================================= 1. Verse =====
    \barNumberCheck #5
    \tempo "Verse"
    R1*7|
    a16^"Clarinet only"\mp\( b cs e~e cs b a~ a\) b\( cs e~e cs b a~|
    a\) b\( cs e~e cs b a~a\) b\( cs e~e cs b a\)|
    a'16\mp\(^"Flute only" b cs e~e cs b a~a\) b\( cs e~e cs b a~|
    a\) b\(cs e~e cs b a~a\)b\( cs e~e cs b a\)|
    a,16^"Clarinet only"\mp\( b cs e~e cs b a~ a\) b\( cs e~e cs b a~|
    a\) b\( cs e~e cs b a~a\) b\( cs e~e cs b a\)|
    a'16\mp\(^"Flute only" b cs e~e cs b a~a\) b\( cs e~e cs b a~|
    a\) b\(cs e~e cs b a~a\)b\( cs e~e cs b a\)|\bar "||"
    
    \mark\default % ======================================================= 2. Chorus ====
    \barNumberCheck #20
    \tempo "Chorus"
    R1*7
    \time 2/4
    r4 <a, a'>16 \<(<b b'>32<cs cs'><d d'><e e'><fs fs'><gs gs'>)
    \time 4/4 
    <a a'>8\f-> r8 r4 r2|
    R1\bar "||"
    
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