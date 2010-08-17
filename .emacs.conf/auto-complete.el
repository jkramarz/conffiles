(try-load-and-configure-library
 'auto-complete
 (global-auto-complete-mode t)

;; FIXME add dictionaries without explicitly specifying the path
;; (add-to-list 'ac-dictionary-directories "~/emacs-stuff/auto-complete-1.3/dict")

 (require 'auto-complete-config)
 (ac-config-default)

 (setq-default ac-dwim t))

;;(custom-set-variables
  ;; custom-set-variables was added by me.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
;;; '(ac-auto-start 4)
;;; '(ac-dwim t)
;;; '(ac-modes (quote (emacs-lisp-mode lisp-interaction-mode c-mode cc-mode c++-mode java-mode perl-mode cperl-mode python-mode ruby-mode ecmascript-mode javascript-mode js2-mode php-mode css-mode makefile-mode sh-mode fortran-mode f90-mode ada-mode xml-mode sgml-mode erlang-mode))))
