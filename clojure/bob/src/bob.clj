(ns bob
  (:require [clojure.string :as str]))

(defn response-for [s]
  (let [shouting? (and (re-find #"[A-Za-z]" s)
                       (= (str/upper-case s) s))
        question? (re-find #"\?\s*$" s)
        silence?  (re-find #"^\s*$" s)]
    (cond
      (and shouting?
           question?) "Calm down, I know what I'm doing!"
      shouting?       "Whoa, chill out!"
      question?       "Sure."
      silence?        "Fine. Be that way!"
      :else           "Whatever.")))
