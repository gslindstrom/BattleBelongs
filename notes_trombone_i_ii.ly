notes_trombone_i_ii = \relative c {
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
    <<{<cs e>2( <e a>)}{s8\mp s8\< s2 s8 s8\!}>> \bar "||"
    
    \mark\default % ======================================================= 2. Chorus ====
    \barNumberCheck #20
    \tempo "Chorus"
    R1*4
    <d fs>2\mf(<cs e>)|
    <e gs>(<fs a>)|
    <d fs>(<cs e>)|
    \time 2/4 
    <<{<e gs>2}{s8\< s4 s8\!}>>|
    \time 4/4 
    <e a>\f->\bendAfter #-4 r8 r4 r2|
    r4 a8( e) b8.( a16) r8 e~\bar "||"
    
    \mark\default % ======================================================= 3. Verse =====
    \barNumberCheck #30
    \tempo "Verse"
    <<{e1}{s8\>s2.s8\!}>>|
    R1|
    r4 cs8-.\mf d16( e~e2~|
    e4) fs16(gs a8~a4) b8.(a32 gs|
    
    
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