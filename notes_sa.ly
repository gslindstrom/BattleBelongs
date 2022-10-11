notes_sa = \relative c' {
  \key a \major
  \time 4/4
  \tempo 4=\tempo_m_i
  \set countPercentRepeats = ##t
  \set Score.markFormatter = #format-mark-box-numbers
  \clef treble{
  \compressMMRests{
    R1*4\bar "||
"
    \mark\default % ======================================================= 1. Verse =====
    \barNumberCheck #5
    \tempo "Verse"
    r8 e e e e d cs cs~|
    cs8 b16(a) r4 cs8 e e e~|
    e8 fs16 fs~fs4 r2|
    R1|
    r8 e e e e d cs cs~|
    cs b16(a) r8 cs8 cs8. b16 b4~|
    b16 a8 a16~a4 r2|
    r8 e' e e e d cs cs~|
    cs8 b16(a) r4 cs8 e e e~|
    e8 fs4. r2|
    R1|
    r4 r8 e e d cs cs~|
    cs8 b16(a) r8 cs cs8. b16 b4~|
    b16 a8 a16~a4 r2|
    r2 r8<e' a> <e a> <d fs>\bar "||"
    
    \mark\default % ======================================================= 2. Chorus ====
    \barNumberCheck #20
    \tempo "Chorus"
    <cs e>4<b d>16(<a cs>) r8 <cs e><d fs><e a><e gs>~|
    <e gs>4 <cs e>8<e a><e a><d fs><cs e><cs e>|
    r4 <cs e>4<b d>16(<a cs>) r <a cs><cs e><d fs><e a>8|
    <e gs>8.<e gs>16~<e gs>8<cs e>~<cs e> r16 <cs e><e a>8<d fs>|
    <cs e>4 <b d>16(<a cs>) r8<cs e><d fs><e a><e gs>~|
    <e gs>4 r8 <e a><e a><d fs><cs e><cs e>~|
    <cs e>8 r <cs e>4 <b d>16(<a cs>8)<a cs>16 <cs e><d fs><e a>8|
    \time 2/4 
    <e gs>8. <e gs>16~<e gs>8 <cs e>8~
    \time 4/4
    <cs e>4 r4 r2|
    R1\bar "||"
    
    \mark\default % ======================================================= 3. Verse =====
    \barNumberCheck #30
    \tempo "Verse"
    r4 r8 e e d cs cs~|
    cs b16(a) r8 cs cs e e e~|
    e8 fs4. r2|
    R1|
    r4 r8 e e d cs cs~|
    cs b16(a) r8 c cs8. b16 b4~|
    b8. a16 a4 r2|
    
    
    
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