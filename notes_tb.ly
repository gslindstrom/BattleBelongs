notes_tb = \relative c {
  \key a \major
  \time 4/4
  \tempo 4=\tempo_m_i
  \set countPercentRepeats = ##t
  \set Score.markFormatter = #format-mark-box-numbers
  \clef bass{
  \compressMMRests{
    R1*4\bar "||"
    \mark\default % ======================================================= 1. Verse =====
    \barNumberCheck #5
    \tempo "Verse"
    R1*14|
    r2 r8 <a cs'> <a cs'> <a b'>\bar "||"
    
    \mark\default % ======================================================= 2. Chorus ====
    \barNumberCheck #20
    \tempo "Chorus"
    <d a'>4<d fs>16(<d e>) r8 <a a'><a b'><a cs'><e' b'>~|
    <e b'>4<e a>8<e cs'><fs cs'><fs b><fs a><d a'>|
    r4 <d a'><<{fs16( e)}\\{a,8}>> r16 <a e>16<a a'><a b'><a cs'>8|
    <e' b'>8.<e b'>16~<e b'>8<fs a>~<fs a> r16<fs a><fs cs'>8<fs b>|
    <d a'>4<<{fs16(e)}\\{d8}>> r8<a a'><a b'><a cs'><e' b'>~|
    <e b'>4 r8 <e cs'><fs cs'><fs b><fs a><d a'>~|
    <d a'> r <d a'>4<a fs'>16(<a e'>8) <a e'>16 <a a'><a b'><a cs'>8|
    \time 2/4 
    <e' b'>8. <e b'>16~<e b'>8<a,a'>~|
    \time 4/4 
    <a a'>4 r r2|
    R1\bar "||"
    
    \mark\default % ======================================================= 3. Verse =====
    \barNumberCheck #30
    \tempo "Verse"
    r4 r8 e' e d cs cs~|
    cs b16(a) r8 cs cs e e e~|
    e8 fs4. r2|
    R1|
    r4 r8 e e d cs cs~|
    cs b16(a) r8 cs cs8. b16 b4~|
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