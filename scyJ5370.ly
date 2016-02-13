%=============================================
%   created by MuseScore Version: 1.3
%          domingo, 31 de janeiro de 2016
%=============================================

\version "2.12.0"



#(set-default-paper-size "a5")

\paper {
  line-width    = 120\mm
  left-margin   = 20\mm
  top-margin    = 10\mm
  bottom-margin = 20\mm
  %%indent = 0 \mm 
  %%set to ##t if your score is less than one page: 
  ragged-last-bottom = ##t 
  ragged-bottom = ##f  
  %% in orchestral scores you probably want the two bold slashes 
  %% separating the systems: so uncomment the following line: 
  %% system-separator-markup = \slashSeparator 
  }

\header {
    }

ACbvoiceAA = \relative c,{
    \set Staff.instrumentName = #"Contrabass"
    \set Staff.shortInstrumentName = #"Cb."

    \clef "bass_8"
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 2/4 
    \repeat volta 2{r8^"A"\< c\!  r\> c'\!      | % 1
    c^"E"\< c,\! r4\>      | % 2
    r8^"I"\!\< c4\! c'8~\>      | % 3
    c^"O"\!\< c,4\! r8\>     | % 4
    r^"U"\!\< c r\! c'\>      | % 5
    c^"O"\!\< c,\! r4\>      | % 6
    r8^"I"\!\< c4\! c'8~      | % 7
    c^"E"\!\< c,4\! \>r8\!      |} % 8
    \bar "|."
}% end of last bar in partorvoice

 

ASnDrvoiceBA = \relative c{
    \set Staff.instrumentName = #"Snare Drum"
    \set Staff.shortInstrumentName = #"Sn. Dr."
    \clef percussion
    %staffkeysig 
    %bartimesig: 
    \time 2/4 
    \repeat volta 2{r4^"pan:0" b'8 r      | % 1
    r4^"pan:0.5" b8 r      | % 2
    r4^"pan:1" b8 r      | % 3
    r4^"pan:0.5" b8 r      | % 4
    r4^"pan:1" b8 r      | % 5
    r4^"pan:0.5" b8 r      | % 6
    r4^"pan:1" b8 r      | % 7
    r4^"pan:0.5" b8 r      |} % 8
    \bar "|." 
}% end of last bar in partorvoice

 

ABDrvoiceCA = \relative c{
    \set Staff.instrumentName = #"Bass Drum"
    \set Staff.shortInstrumentName = #"B. Dr."
    \clef percussion
    %staffkeysig 
    %bartimesig: 
    \time 2/4 
    \repeat volta 2{g'4.^"fb:1" g8      | % 1
    r^"fb:0.8" g g4      | % 2
    g4.^"fb:0.6" g8      | % 3
    r^"fb:0.4" g g4      | % 4
    g4.^"fb:0.2" g8      | % 5
    r^"fb:0.1" g g4      | % 6
    g4.^"fb:0.05" g8      | % 7
    r^"fb:0.25" g g4      |} % 8
    \bar "|." 
}% end of last bar in partorvoice


\score { 
    << 
        \context Staff = ACbpartA << 
            \context Voice = ACbvoiceAA \ACbvoiceAA
        >>


        \context Staff = ASnDrpartB << 
            \context Voice = ASnDrvoiceBA \ASnDrvoiceBA
        >>


        \context Staff = ABDrpartC << 
            \context Voice = ABDrvoiceCA \ABDrvoiceCA
        >>

  >>

  %% Boosey and Hawkes, and Peters, have barlines spanning all staff-groups in a score,
  %% Eulenburg and Philharmonia, like Lilypond, have no barlines between staffgroups.
  %% If you want the Eulenburg/Lilypond style, comment out the following line:
  \layout {\context {\Score \consists Span_bar_engraver}}
}%% end of score-block 
