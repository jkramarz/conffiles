;;;; EMMS

(try-load-and-configure-library
 'emms-setup
 (require 'emms-setup)
 (emms-standard)
 (emms-default-players)
 
 (defun ts/showsong ()
   (emms-next-noerror)
   (system-notify "emms is now playing..." (emms-track-description (emms-playlist-current-selected-track))))
 
 (setq emms-player-next-function 'ts/showsong) 
 
 ;; system-notify: make a nice notification widget on the screen
 (defun system-notify (title message)
   "invoke easy-notify with a title and shows a message"
   (interactive "")
  (start-process-shell-command "*Output*" nil 
                               (replace-regexp-in-string "&" "&amp;" (concat "easy-notify -t \"" title "\" -m \"" message "\""))))
 
 ;; use system-notify with emms
 (add-hook 
  'emms-player-started-hook 
  '(lambda ()(system-notify 
              "emms is now playing..." 
              (emms-track-description (emms-playlist-current-selected-track)))))

 ;; add some handy keybindings
 (global-set-key (kbd "C-c e <up>") 'emms-start)
 (global-set-key (kbd "C-c e <down>") 'emms-stop)
 (global-set-key (kbd "C-c e <left>") 'emms-previous)
 (global-set-key (kbd "C-c e <right>") 'emms-next)
 
 ;; multimedia keys
 ;; TODO check if they work on win32
 ;; TODO check if any of this (emms) actually works on win32...
 (global-set-key (kbd "<XF86AudioPlay>") 'emms-pause)
 (global-set-key (kbd "<XF86AudioStop>") 'emms-stop)
 (global-set-key (kbd "<XF86AudioPrev>") 'emms-previous)
 (global-set-key (kbd "<XF86AudioNext>") 'emms-next))
