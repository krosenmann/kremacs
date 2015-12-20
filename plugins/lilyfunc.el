;; Полезные  функции для LilyPond-mode

(defun bayan-mask()
   ;;Function for autopaste bayan Staffs
   ;; (Right hand, left hand: bass, chords and step voice with mask
   (interactive)
(insert " 
 \\new Staff  { <<
    \\new Voice {\\voiceOne \\stemNeutral }
    \\new Voice {\\voiceTwo \\stemNeutral}
    \\new Voice {\\voiceThree \\stemNeutral
		\\override ParenthesesItem #'font-size = #4
		\\override Voice.Stem #'transparent = ##t
		\\override Voice.Flag #'transparent = ##t
		\\teeny }
    >>}"))

