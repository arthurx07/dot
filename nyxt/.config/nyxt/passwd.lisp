(in-package #:nyxt-user)

;; I use pass, and this sets the location of password files.
(define-configuration password:password-store-interface
 ((password:password-directory "/home/kumao/.password-store")))

;; This is to emphasize that I use pass, as Nyxt is not always
;; smart enough to guess that.
(define-configuration buffer
 ((password-interface (make-instance 'password:user-password-store-interface))))
