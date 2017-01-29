#lang racket
(define (main) (
                Ninety_Nine_Bottles_of_Beer 99))

(define (Ninety_Nine_Bottles_of_Beer num) 
                                           (if
                                             (= num 1)
                                             (string-append "One bottle of beer on the wall, "
                                                            "one bottle of beer. "
                                                            "Knock one down, pass it around, "
                                                            "no more bottles of beer on the wall. ")
                                             (string-append (number->string num) " bottles of beer on the wall, "
                                                            (number->string num) " bottles of beer. "
                                                            " Knock one down, pass it around, "
                                                            (number->string (- num 1))
                                                            " bottle"
                                                            (if (= num 2)
                                                                ""
                                                                "s")
                                                                " of beer on the wall. "
                                                            (Ninety_Nine_Bottles_of_Beer (- num 1)))))

