notes_trumpet_i_ii = \relative c {
  \key b \major
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
    R1*14|
    <<{<ds' fs>2^( <fs b>)}{s8\mp s8\< s2 s8 s8\!}>>\bar "||"
    
    \mark\default % ======================================================= 2. Chorus ====
    \barNumberCheck #20
    \tempo "Chorus"
    R1*4|
    e2\mf(ds)|
    fs(gs)|
    <e gs>(<ds fs>)
    \time 2/4
    <<{<fs a>2}{s8\< s4 s8\!}>>|
    \time 4/4
    <fs b>8\bendAfter #-4 \f-> r r4 r2|
    r4 b8(fs) cs'8.( b16) r8 fs8~|
    \bar "||"
    
    \mark\default % ======================================================= 3. Verse =====
    \barNumberCheck #30
    \tempo "Verse"
    <<{fs1}{s8\>s2. s8\!}>>
    R1|
    r4 d8-.\mf e16\( fs16~fs2~|
    fs4\) gs16( as b8~b4) cs8.(b32 as|
    
    
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