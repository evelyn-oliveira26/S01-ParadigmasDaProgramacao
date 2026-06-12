(defstruct criatura
  nome
  ambiente
  periculosidade 
  vida-media)

(defun filtra-por-perigo (lista-criaturas)
  (remove-if-not
    (lambda (c)
      (not (string= (criatura-periculosidade c) "Baixa"))) lista-criaturas))

(defun relatorio-profundidade (lista-criaturas)
  (let* 
    ((criaturas-deep (remove-if-not
                       (lambda (c) (string= (criatura-ambiente c) "Deep")) lista-criaturas))
     (relatorio-formatado (mapcar 
                       (lambda (c) (format NIL "[~a]: Vive em [~a]" (criatura-nome c) (criatura-ambiente c))) criaturas-deep))) relatorio-formatado))

(defun descricao-criatura (c)
  (format NIL "~a | Ambiente: ~a | Periculosidade: ~a"
    (criatura-nome c)
    (criatura-ambiente c)
    (criatura-periculosidade c)))

(defun main ()
  (let ((catalogo (list
                    (make-criatura :nome "Peeper" :ambiente "Safe Shallows" :periculosidade "Baixa" :vida-media 5)
                    (make-criatura :nome "Reaper Leviathan" :ambiente "Dunes" :periculosidade "Alta" :vida-media 100)
                    (make-criatura :nome "Ghost Leviathan" :ambiente "Deep" :periculosidade "Alta" :vida-media 500)
                    (make-criatura :nome "Crabsquid" :ambiente "Deep" :periculosidade "Media" :vida-media 30))))

    (format t "~%CATALOGO GERAL (SCANNER DO RYLEY)~%")
    (dolist (c catalogo)
      (format t "~a~%" (descricao-criatura c)))

    (format t "~%ALERTA: CRIATURAS PERIGOSAS (PERIGO MEDIO/ALTO)~%")
    (let ((perigosas (filtra-por-perigo catalogo)))
      (dolist (c perigosas)
        (format t "~a~%" (descricao-criatura c))))

    (format t "~%RELATORIO DE PROFUNDIDADE (DEEP)~%")
    (let ((relatorio (relatorio-profundidade catalogo)))
      (dolist (linha relatorio)
        (format t "~a~%" linha)))))
        
(main)
