(ns armstrong-numbers)

(defn armstrong? [num]
  (let [digits     (map (fn [c] (Integer/parseInt (str c)))
                        (str num))
        num-digits (count digits)]
    (== num
        (reduce + (map (fn [d] (Math/pow d num-digits))
                       digits)))))
