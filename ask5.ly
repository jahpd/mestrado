%=============================================
%   created by MuseScore Version: 1.3
%          sexta-feira, 22 de janeiro de 2016
%=============================================

\version "2.12.0"



#(set-default-paper-size "a5")

\paper {
  line-width    = 190\mm
  left-margin   = 0\mm
  top-margin    = 0\mm
  bottom-margin = 20\mm
  indent = 20 \mm 
  %%set to ##t if your score is less than one page: 
  ragged-last-bottom = ##t 
  ragged-bottom = ##f  
  %% in orchestral scores you probably want the two bold slashes 
  %% separating the systems: so uncomment the following line: 
  %% system-separator-markup = \slashSeparator 
  }

\header {
}

AvoiceAA = \relative c'{
    \set Staff.instrumentName = #""
    \set Staff.shortInstrumentName = #""
    \clef treble
    \key c \major  
    \time 2/4 
    c4 c8 r8 |
    f4 c8 r8 |
    ees8\( d8 f8 aes8\) |
    g4 f8\( g8\) |
    \time 5/8
    d4 \times 2/3 {f8 c16~} c4 |
    \time 2/4
    g'8 aes8 d,4 |
    ees4 c8 r8 |
    bes4 g'8\( f8\) |
    ees8\( d8\) c4 |
    \bar "|." 
% end of last bar in partorvoice
}

AvoiceBA = \relative c{
    \set Staff.instrumentName = #""
    \set Staff.shortInstrumentName = #""
    \clef bass
    %staffkeysig
    \key c \major 
    %barkeysig: 
    \key c \major 
    %bartimesig: 
    \time 2/4 
    g'4-> \f g8-_ \p r8 |
    bes4-> \f ees,8-_\p r8 |
    g4-> \f bes8-_ \p r8  |
    ees,4-> \f d8\(\p\>\! ees8\) |
    \time 5/8
    bes4.-> \f e8-_\p c8   |
    \time 2/4
    ees4-> \f bes'8-_\p r8 
    g8\(-> \f\>\! aes8\) g8-_\p r8 
    aes4-> \f ees8\(\p\>\! d8\) |
    g4->\f ees8-_\p r8 | 
    \bar "|."
}% end of last bar in partorvoice




\score { 
    << 
        \context PianoStaff <<
        \set PianoStaff.instrumentName="Piano" 
            \context Staff = ApartA << 
               \context Voice = ApartA << \AvoiceAA >>
            >>

            \context Staff = ApartB << 
               \context Voice = ApartC << \AvoiceBA >>
            >>
        >> %end of PianoStaffA

  >>

  %% Boosey and Hawkes, and Peters, have barlines spanning all staff-groups in a score,
  %% Eulenburg and Philharmonia, like Lilypond, have no barlines between staffgroups.
  %% If you want the Eulenburg/Lilypond style, comment out the following line:
  \layout {\context {\Score \consists Span_bar_engraver}}
}%% end of score-block 
