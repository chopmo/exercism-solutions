(ns run-length-encoding)

(defn run-length-encode
  "encodes a string with run-length-encoding"
  [plain-text]
  (loop [s   plain-text
         cnt 1
         res ""]
    (let [c    (first s)
          next (second s)]
      (cond
        (nil? c)
        res

        (= c next)
        (recur (rest s)
               (inc cnt)
               res)

        :else
        (recur (rest s)
               1
               (apply str
                      res
                      (when (> cnt 1) cnt)
                      (str c)))))))

(defn run-length-decode
  "decodes a run-length-encoded string"
  [cipher-text]
  (loop [tokens (re-seq #"\d+|[^\d]" cipher-text)
         res    ""]
    (let [count (try
                  (Integer/parseInt (first tokens))
                  (catch Exception _ nil))]
      (cond
        (empty? tokens)
        res

        count
        (recur (drop 2 tokens)
               (apply str res (repeat count (second tokens))))

        :else
        (recur (rest tokens)
               (str res (first tokens)))))))
