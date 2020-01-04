(ns isbn-verifier
  (:require [clojure.string :as str]))

(defn- valid-format? [isbn]
  (some? (re-find #"^\d-?\d\d\d-?\d\d\d\d\d-?[\dX]$" isbn)))

(defn- valid-checksum? [isbn]
  (as-> isbn i
     (str/replace i #"-" "")
     (map #(str/replace % #"X" "10") i)
     (map #(Integer/parseInt %) i)
     (map vector (range 10 0 -1) i)
     (map #(apply * %) i)
     (reduce + i)
     (= 0 (mod i 11))))

(defn isbn? [isbn]
  (and
   (valid-format? isbn)
   (valid-checksum? isbn)))
