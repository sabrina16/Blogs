;MortgageCalculator.lisp
;only does fixed rates

;class loan
(defclass loan ()
   (
	  ;rhis rate is the monthly rate on the loan
      (rate :accessor loan-rate)
	  
	  ;this is the initial money in dollars borrowed at first before interest
      (principal :accessor loan-principal)
      
	  ;this is the number of months that the loan has to be paid in
	  (time :accessor loan-time)
	  
	  ;this is the amount of money in dollars that the borrower has to pay per month
	  (monthly-payment :reader monthly-payment)
   )
)

; method calculating monthly payments stored in the variable monthlyPayment   
(defun monthly-payment ((object loan))
	(if (= (loan-rate object) 0)
	   (return-from monthly-payment (/ (loan-principal object) (loan-time object)))
	)
	(setq numerator (* (loan-rate object) (loan-principal object)))
	(setq denominator (- 1 (expt (+ 1 (loan-rate object)) (* -1 (loan-time object)))))
	(return-from monthly-payment (/ numerator denominator))
)

;records data into a text file
(defun write-to-file ((object loan) directory-pathname file-pathname)
	;use an if statement to see if the file actually exists so it doesn't crash
	
	(if (not (not (probe-file directory-pathname)))
		(with-open-file (stream file-pathname
		:direction :output
		:if-exists :append
		:if-does-not-exist :create)

		(format stream "Monthly interest rate on loan: ~d%" (* (float (loan-rate object)) 100))
		(terpri stream)
		(format stream "Principal on loan: $~$" (loan-principal object))
		(terpri stream)
		(format stream "Time on the loan is ~d year(s)" (/ (loan-time object) 12))
		(terpri stream)
		(format stream "Monthly payment: $~$" (monthly-payment object))
		(terpri stream)
		(terpri stream)
		)
	)
)
;start program here

;instance of the class above

(setf mortgage (make-instance 'loan))

;default values so I don't get a warning
;check if I actually need this****
#|
(setf (loan-rate mortgage) (/ 500 1200))
(setf (loan-principal mortgage) (float 0))
(setf (loan-time mortgage) (* 1 12))
|#

;title program
(format t "   Fixed-rate Mortgage Calculator~%")

;works up until here at least it has been tested 
;still need to edit fileIO and make it work with the rest of the OOP class
;need to edit formula for mortgage payments

;offer serialization here!!
(format t "This program has the ability to serialize the loans you keep track of to a text file.~%")
(format t "If you would like to serialize put the name of the absolute pathname of the directory you would like to use~%")
(format t "below but don't put an ending slash if you don't to serialize put a fake directory pathname~%")
(setq pathname-of-directory (read-line))
(format t "Now please include the filename include the name of the text file you would like to serialize to if it~%") 
(format t "doesn't exist if will create one if it does it will append to it don't forget to start with correct slashes~%")
;(format t "for example put something like \data.txt not just data.txt")
(setq pathname (read-line))
(setq pathname2 (concatenate 'string pathname-of-directory pathname))

;work on this next11
(loop
	(format t "What is the annual rate as percentage? ")
	(setf (loan-rate mortgage) (/ (read) 1200))
	(format t "What is the principal? ")
	(setf (loan-principal mortgage) (float (read)))
	(format t "What is the time on your mortgage in years? ")
	(setf (loan-time mortgage) (* (read) 12))
	
	(format t "~%The monthly payment is $~$~%" (monthly-payment mortgage))
	
	(write-to-file mortgage pathname-of-directory pathname2)
	
	(format t "Hit q to quit and press anything else to continue then press enter: ")
	(setq go-through (read-line))
	
   (when (string= go-through "q") (return go-through))
)
(format t "Thank you for using this program")