(defstruct erva
  nome
  preco-base)

(defun calcula-dosagem (peso idade)
  (cond
    ((or (<= idade 5) (<= peso 20.0)) "10ml")
    ((or (<= idade 12) (<= peso 40.0)) "25ml")
    (T "50ml")))

(defun ajusta-preco (e)
  (cond
    ((string= (erva-nome e) "Ginseng") (* (erva-preco-base e) 3.0))
    ((string= (erva-nome e) "Lotus") (* (erva-preco-base e) 1.5))
    (T (erva-preco-base e))))

(defun descricao-erva (e peso idade)
  (format NIL "Receita: ~a | Preco Ajustado: R$~,2f | Dosagem: ~a"
    (erva-nome e)
    (ajusta-preco e)
    (calcula-dosagem peso idade)))

(defun main ()
  (format t "~%Sistema da Farmacia da Maomao~%~%")
  
  (let* ((ginseng  (make-erva :nome "Ginseng"  :preco-base 50.00))
         (lotus    (make-erva :nome "Lotus"    :preco-base 30.00))
         (camomila (make-erva :nome "Camomila" :preco-base 15.00)))

    (format t "Paciente 1 (Crianca, 4 anos, 16.5kg):~%")
    (format t "~a~%~%" (descricao-erva camomila 16.5 4))

    (format t "Paciente 2 (Adolescente, 11 anos, 35.0kg):~%")
    (format t "~a~%~%" (descricao-erva lotus 35.0 11))

    (format t "Paciente 3 (Adulto, 25 anos, 70.0kg):~%")
    (format t "~a~%~%" (descricao-erva ginseng 70.0 25))))

(main)
