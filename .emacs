
(load "ffap")

(defun sa () "save all" (interactive) (save-some-buffers t))

(defun ir () "indent region" (interactive) (indent-region (region-beginning) (r\
egion-end) nil))

(global-set-key (kbd "ESC g") 'goto-line)

(define-key ctl-x-map "." 'find-file-at-point)

(menu-bar-mode -1) ; no text menu                                               
; (tool-bar-mode -1)                                                            

(defun rb ()
  (interactive)
  (revert-buffer))


(shell "xx")
(shell "zz")

(defun dave-python-make-newline-indent ()
  (interactive)
  (define-key python-mode-map "" 'newline-and-indent))

(add-hook 'python-mode-hook 'dave-python-make-newline-indent)

(transient-mark-mode 1)

; ido
(load "ido")
(ido-mode t)
(setq ido-case-fold nil
      ido-default-file-method 'samewindow
      ido-default-buffer-method 'samewindow)

; occurrer (new for 2025)
(defun occurrer (substring)
  "Search for SUBSTRING in all open buffers using multi-occur-in-matching-buffers."
  (interactive "sSearch for substring: ")
  (multi-occur-in-matching-buffers ".*" substring))

(global-set-key (kbd "ESC o") 'occurrer)
