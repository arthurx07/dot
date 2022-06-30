(in-package #:nyxt-user)

;;; Load quicklisp. Not sure it works.
#-quicklisp
(let ((quicklisp-init
       (merge-pathnames "quicklisp/setup.lisp" (user-homedir-pathname))))
  (when (probe-file quicklisp-init)
    (load quicklisp-init)))

;; loading other config files from the same directory.
(dolist (file (list
                (nyxt-init-file "status.lisp")
                (nyxt-init-file "mpv.lisp")
                (nyxt-init-file "autofill.lisp")
                (nyxt-init-file "passwd.lisp")
                )))

;; set web buffer mode variables
(defvar *web-buffer-modes*
  '(nyxt/vi-mode:vi-normal-mode))

;; set (web) buffer configs (normal web surfing && interal nyxt pages)
(define-configuration buffer
  ;; vi-like keybindings
  ((default-modes (append *web-buffer-modes* %slot-default%)))
  ;; default url
  ((default-new-buffer-url "https://duckduckgo.com")))

;; set web prompt buffer (command prompt)
(define-configuration (buffer prompt-buffer)
  ((default-modes `(nyxt/vi-mode:vi-insert-mode ,@%slot-default%))))
