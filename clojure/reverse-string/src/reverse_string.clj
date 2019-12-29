(ns reverse-string)

(defn reverse-string [s]
  (->> s
       seq
       (reduce #(cons %2 %1) ())
       (apply str)))
