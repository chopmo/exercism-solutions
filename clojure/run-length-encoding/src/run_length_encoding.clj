(ns run-length-encoding
  (:require [clojure.string :as str]))

(defn run-length-encode
  "encodes a string with run-length-encoding"
  [plain-text]
  (loop [s   (seq plain-text)
         cnt 1
         res ()]
    (let [c    (first s)
          next (second s)]
      (cond
        (nil? c)
        (apply str res)

        (= c next)
        (recur (rest s)
               (inc cnt)
               res)

        :else
        (recur (rest s)
               1
               (concat res [(when (> cnt 1) cnt) c]))))))

(defn run-length-decode
  "decodes a run-length-encoded string"
  [cipher-text]
  (loop [tokens (re-seq #"\d+|[^\d]" cipher-text)
         res ()]
    (let [[t1 t2] (take 2 tokens)
          count (try (Integer/parseInt t1) (catch Exception _ nil))]
      (cond
        (nil? t1)
        (apply str res)

        count
        (recur (drop 2 tokens)
               (concat res (repeat count t2)))

        :else
        (recur (rest tokens)
               (concat res [t1]))))))
