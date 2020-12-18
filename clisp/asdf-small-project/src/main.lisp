(ql:quickload "str")

(defun split-line (line)
  (loop for char in line do (format t "~A~%" char)))

(defun read-srpn ()
  (let (a)
    (setq a (read-line)) ; read the input
    (if a (prog2
	      (split-line a)
	      (read-srpn)) "exiting program")))

(defun -main ()
  "main function that starts the calculator"
  (calculator))

(defun calculator ()
  "the calculator pipe"
  (let ((a (read-line))) ;read the input from the player
    (setq a (process-to-list a))
    (setq a (numbers-to-numbers a)))) ; create a list from it


(defun process-to-list (ls) 
  "process ls from string to list"
  (loop :for char :across ls :collect char))
    
#||
(defun number-to-numbers (list)
  "conver the number characters to real numbers"
  (map 'list
       #'(lambda (x)) (progn (cond ((= x #\1) 1)
				   ((= x #\2) 2)
				   (t x))
			     list)))

||#
