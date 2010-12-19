;;;; Whitespace mode
(global-set-key (kbd "<f12>") 'whitespace-mode)

;;;; Disable arrows
;;;; Code taken from http://news.ycombinator.com/item?id=2007589
(defun  disabled-key ()
  "Assign this to disable a key"
  (interactive)
  (print "All your arrow keys are belong to me. Have a nice day!"))

;; All your arrow keys are disabled Hahahah
(global-set-key (kbd "<up>")      'disabled-key)
(global-set-key (kbd "<down>")    'disabled-key)
(global-set-key (kbd "<left>")    'disabled-key)
(global-set-key (kbd "<right>")   'disabled-key)
(global-set-key (kbd "<C-up>")      'disabled-key)
(global-set-key (kbd "<C-down>")    'disabled-key)
(global-set-key (kbd "<C-left>")    'disabled-key)
(global-set-key (kbd "<C-right>")   'disabled-key)
