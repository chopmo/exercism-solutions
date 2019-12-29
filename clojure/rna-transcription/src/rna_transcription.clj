(ns rna-transcription)

(defn- transcribe [c]
  (case c
    \G \C
    \C \G
    \T \A
    \A \U
    (throw (AssertionError.))))

(defn to-rna [dna]
  (apply str (map transcribe dna)))
