;; Полезные  функции для LilyPond-mode

(defun bayan-mask()
   ;;Function for autopaste bayan Staffs
   ;; (Right hand, left hand: bass, chords and step voice with mask
   (interactive)
(insert " \clef bass
  { <<
    \\new Voice {\\voiceOne \\stemNeutral \n }
    \\new Voice {\\voiceTwo \\stemNeutral \n}
    \\new Voice {\\voiceThree \\stemNeutral
		\\override ParenthesesItem #'font-size = #4
		\\override Voice.Stem #'transparent = ##t
		\\override Voice.Flag #'transparent = ##t
		\\teeny  \n }
    >>}"))

(defun default-lily-paste()
  ;; paste default string in new file
  (interactive)
  (insert "\\version \"2.18.0\"\n\\language \"deutsch\""))

(defun keys-lily-hook ()
  (local-set-key (kbd "<f5>") 'default-lily-paste))

(add-hook 'LilyPond-mode-hook 'keys-lily-hook)
