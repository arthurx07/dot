(define-configuration browser
  (;; This is for Nyxt to never prompt me about restoring the previous session.
   (autofills (list (make-autofill :name "First Name" :fill "Artur")
                    (make-autofill :name "Last Name" :fill "Leivar Guiu")
                    (make-autofill :name "Name" :fill "Artur Leivar Guiu")
                    (make-autofill :name "Email" :fill "arturleivarx@gmail.com")
                    (make-autofill :name "Hello Printer" :fill
                                   (lambda () (format nil "hello!")))))))
