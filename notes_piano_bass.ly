notes_piano_bass = \relative c, {
  \key a \major
  \time 4/4
  \tempo 4=\tempo_m_i
  \set countPercentRepeats = ##t
  \set Score.markFormatter = #format-mark-box-numbers
  \clef bass{
  \compressMMRests{
    a8 a a'16 a,8 a16~a a a8 a'4|
    a,8 a a'16 a,8 a16~a a a8 a'4|
    a,8 a a'16 a,8 a16~a a a8 a'4|
    a,8 a a'16 a,8 a16~a a a8 a'4\bar "||"
    
    \mark\default % ======================================================= 1. Verse =====
    \barNumberCheck #5
    \tempo "Verse"
    a,4 a a8 a16 a a4|
    a4 a a8 a16 a a4|
    d,4 d d8 d16 d d'4|    
    d,4 d d8 d16 d d'4|    
    fs,4 fs' fs,8 fs16 fs fs4|
    fs4 fs' fs,8 fs16 fs fs4|
    d4 d d8 d16 d d'4|
    a4 a a8 a16 a a4|
    a4 a a8 a16 a a4|
    d,4 d d8 d16 d d'4|
    d,4 d d8 d16 d d'4|
    fs,4 fs' fs,8 fs16 fs fs4|
    fs4 fs' e,8 e16 e e'4|
    a,4 a' a,8 a16 a a'4|
    a,4 a' a,8 a16 a a'8 a,\bar "||"
    
    \mark\default % ======================================================= 2. Chorus ====
    \barNumberCheck #20
    \tempo "Chorus"
    <d, d'>2 a'|
    <e e'><fs fs'>|
    <d d'> a'|
    <e e'><fs fs'>|
    d4 d' a a|
    e e' fs, fs|
    d d' a a|
    \time 2/4
    <e e>2|
    \time 4/4 
    a8\f a a'16 a,8 a16~a a a8 a'4|
    a,8 a a'16 a,8 a16~a a a8 a'4|
    \bar "||"
    
    \mark\default % ======================================================= 3. Verse =====
    \barNumberCheck #30
    \tempo "Verse"
    a,4 a a8 a16 a a4|
    a4 a a8 a16 a a4|
    d,4 d d8 d16 d d'4|
    d,4 d d8 d16 d d'4|
    fs,4 fs' fs,8 fs16 fs fs4|
    fs4 fs' fs,8 fs16 fs e'4|
    d,4 d d8 d16 d d'4|    
    
    
    
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