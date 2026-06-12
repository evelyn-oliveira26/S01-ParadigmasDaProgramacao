(defstruct local
  nome
  elemento
  dificuldade
  recompensa)

(defun bonus-elemental (l)
  (cond
    ((or (string= (local-elemento l) "Pyro") 
         (string= (local-elemento l) "Electro")) 
     (* (local-recompensa l) 1.20)) ; +20%
    
    ((string= (local-elemento l) "Cryo") 
     (* (local-recompensa l) 1.10)) ; +10%
    
    (T (local-recompensa l))))

(defun vale-a-pena (l)
  (and (> (bonus-elemental l) 500)
       (<= (local-dificuldade l) 3)))

(defun rota-de-farm (catalogo)
  (let*
    ((locais-recomendados (remove-if-not
                            (lambda (l) (vale-a-pena l))
                            catalogo))
     
     (rota-formatada (mapcar
                       (lambda (l)
                         (format NIL "[~a] - Recompensa: ~,2f"
                           (local-nome l)
                           (bonus-elemental l)))
                       locais-recomendados)))
    rota-formatada))

(defun main ()
  (let ((catalogo (list
                    (make-local :nome "Dominio de Guyun" :elemento "Electro" :dificuldade 4 :recompensa 600)
                    (make-local :nome "Pico de Vindagnyr" :elemento "Cryo" :dificuldade 3 :recompensa 480)
                    (make-local :nome "Palacio Oculto" :elemento "Pyro" :dificuldade 2 :recompensa 450)
                    (make-local :nome "Jardim de Cecilia" :elemento "Hydro" :dificuldade 2 :recompensa 400)
                    (make-local :nome "Toca do Stormterror" :elemento "Anemo" :dificuldade 5 :recompensa 1000))))

    (format t "~%CATALOGO DE TEYVAT~%~%")
   
    (dolist (l catalogo)
      (format t "~a | Elemento: ~a | Dificuldade: ~a | Recompensa Final: ~,2f~%"
        (local-nome l)
        (local-elemento l)
        (local-dificuldade l)
        (bonus-elemental l)))

    (format t "~%~%ROTA DE FARM RECOMENDADA~%~%")

    (let ((rota (rota-de-farm catalogo)))
      (dolist (linha rota)
        (format t "~a~%" linha)))))

(main)
