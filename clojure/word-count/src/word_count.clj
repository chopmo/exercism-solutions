(ns word-count
  (:require [clojure.string :as str]))

(defn word-count [s]
  (let [words (-> s
                  str/lower-case
                  (str/replace #"\W" " ")
                  (str/split #" +")
                  sort)]
    (->> words
         (partition-by identity)
         (reduce (fn [m g]
                   (assoc m
                          (first g)
                          (count g)))
                 {}))))
