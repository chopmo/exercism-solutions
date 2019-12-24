(ns armstrong-numbers)

(defn armstrong? [num]
  (let [digit-strs (->> num str (map str))
        digits     (map #(Integer/parseInt %) digit-strs)
        num-digits (count digits)]
    (== num
        (->> digits
             (map (fn [d] (Math/pow d num-digits)))
             (reduce + )))))
