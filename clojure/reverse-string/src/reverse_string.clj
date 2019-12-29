(ns reverse-string)

(defn reverse-string [s]
  (apply str
         (reduce (fn [acc c]
                   (cons c acc))
                 ()
                 (seq s))))
