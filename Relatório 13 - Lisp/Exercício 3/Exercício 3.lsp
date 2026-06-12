(defstruct item
  nome
  tipo
  preco
  forca-magica)

(defun adiciona-imposto (preco)
  (* preco 1.15))

(defun bonus-maldicao (forca)
  (cond
    ((> forca 80) (* forca 1.5))
    (T forca)))

(defun descricao-venda (i)
  (format NIL "Arma: ~a | Preco Final: R$~,2f | Forca Magica: ~,1f"
    (item-nome i)
    (item-preco i)
    (item-forca-magica i)))

(defun processa-venda (catalogo)
  (let*
    ((apenas-armas (remove-if-not
                     (lambda (i) (string= (item-tipo i) "Arma")) catalogo))
     
     (armas-processadas (mapcar
                          (lambda (i)
                            (make-item
                              :nome         (item-nome i)
                              :tipo         (item-tipo i)
                              :preco        (adiciona-imposto (item-preco i))
                              :forca-magica (bonus-maldicao (item-forca-magica i))))
                          apenas-armas))
     
     (relatorio-final (mapcar 
                        (lambda (i)
                         (descricao-venda i)) armas-processadas)))
    relatorio-final))

(defun main ()
  (let ((catalogo (list
                    (make-item :nome "Replica de Katana" :tipo "Arma" :preco 1500.00 :forca-magica 40)
                    (make-item :nome "Espada do Julgamento" :tipo "Arma" :preco 3500.00 :forca-magica 85)
                    (make-item :nome "Pocao de SP" :tipo "Pocao" :preco 50.00 :forca-magica 10)
                    (make-item :nome "Grimorio Sombrio" :tipo "Artefato" :preco 5000.00 :forca-magica 95)
                    (make-item :nome "Adaga Amaldicoada" :tipo "Arma" :preco 2000.00 :forca-magica 90))))

    (format t "~%Relatorio da Loja Clandestina de Iwai~%~%")
    (format t "Armas Processadas (Com Imposto e Bonus aplicados):~%")
    
    (let ((resultado (processa-venda catalogo)))
      (dolist (linha resultado)
        (format t "~a~%" linha)))))

(main)
