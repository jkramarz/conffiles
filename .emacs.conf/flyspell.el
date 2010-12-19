;;;; NOTE I assume that flyspell is available in standard distribution of EMACS (it should be)
(setq ispell-dictionary "polish")

(add-hook 'LaTeX-mode-hook 'flyspell-mode)
;;;; TODO switch flyspell dictionary to polish only in LaTeX files