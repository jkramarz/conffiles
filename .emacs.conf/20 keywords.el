;;; color words TODO, FIXME, NOTE, ect.
(defconst trc-comment-keywords "\\<\\(FIXME\\|TODO\\|BUG\\|HACK\\|NOTE\\|WARNING\\|ERROR\\)")

;; UNUSED handy tool
;; from: Trey Jackson, http://stackoverflow.com/questions/2242572/emacs-todo-indicator-at-left-side/2242801#2242801
(defun annotate-todo ()
  "put fringe marker on TODO: lines in the curent buffer"
  (interactive)
  (save-excursion
    (goto-char (point-min))
    (while (re-search-forward trc-comment-keywords nil t)
      (let ((overlay (make-overlay (- (point) 5) (point))))
        (overlay-put overlay 'before-string (propertize "A"
                                                        'display '(left-fringe right-triangle)))))))
;; Install the word coloring
(defun add-comment-keywords ()
  (font-lock-add-keywords nil
			  `((,trc-comment-keywords 1 font-lock-warning-face t))))

(add-hook 'find-file-hooks 'add-comment-keywords t)
(set-face-underline 'font-lock-warning-face "yellow") ; Just make sure we'll see it