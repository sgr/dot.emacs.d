(define-key global-map "\C-h" 'delete-backward-char)
(define-key global-map "\M-?" 'help-for-help)

(defun ipad-prompt2-key ()
  "Set key translation for iPad"
  (interactive)
  (let ((translations '( 229 [?\M-a]  nil [?\M-b]   231 [?\M-c]  8706 [?\M-d]   nil [?\M-e]
                             402 [?\M-f]  169 [?\M-g]   729 [?\M-h]   nil [?\M-i]  8710 [?\M-j]
                             730 [?\M-k]  172 [?\M-l]   181 [?\M-m]   nil [?\M-n]   248 [?\M-o]
                             960 [?\M-p]  339 [?\M-q]   174 [?\M-r]   223 [?\M-s]  8224 [?\M-t]
                             nil [?\M-u] 8730 [?\M-v]  8721 [?\M-w]  8776 [?\M-x]   165 [?\M-y]
                             937 [?\M-z]
                             96 [?\M-~]  161 [?\M-1]   162 [?\M-4]   163 [?\M-3]   167 [?\M-6]
                             170 [?\M-9]  171 [?\M-\\]  175 [?\M-<]   176 [?\M-*]   177 [?\M-+]
                             182 [?\M-7]  183 [?\M-\(]  186 [?\M-0]   187 [?\M-|]   191 [?\M-\?]
                             198 [?\M-\"] 230 [?\M-']   247 [?\M-/]   728 [?\M->]  8211 [?\M-\-]
                             8212 [?\M-_] 8216 [?\M-\]] 8217 [?\M-}]  8218 [?\M-\)] 8220 [?\M-\[]
                             8221 [?\M-{] 8225 [?\M-&]  8226 [\?M-8]  8249 [?\M-#]  8250 [?\M-$]
                             8260 [?\M-!] 8364 [\?M-@]  8482 [?\M-2]  8734 [\?M-5]  8800 [?\M-=]
                             8804 [?\M-,] 8805 [?\M-.] 64257 [?\M-%] 64258 [?\M-^])))
    (while translations
      (let ((key (car translations)) (def (cadr translations)))
        (if key
            (define-key key-translation-map (make-string 1 key) def)))
      (setq translations (cddr translations)))))
