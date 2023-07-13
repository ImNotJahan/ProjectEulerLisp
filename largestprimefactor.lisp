(defun isPrime (x)
    (loop for i from 2 to (- x 1)
        do (if (eq (mod x i) 0)
            (return nil)
        )
        finally (return T)
    )
)

(defparameter largestPrime 0)
(defparameter num 600851475143)

(loop for i from 2 to (ceiling (expt num (/ 1 2)) 1)
    do (if (eq (mod num i) 0)
        (if (isPrime i)
            (setf largestPrime i)
        )
    )
)

(print largestPrime)