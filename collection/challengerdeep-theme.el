(deftheme challengerdeep
  "challengerdeep-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (challengerdeep-colors
        '(
          (bg         . "#1e1c31")
          (fg         . "#cbe1e7")
          (cursor     . "#fbfcfc")
          (cursor-txt . "#ff271d")
          (selection  . "#cbe1e7")
          (selection-fg . "#1e1c31")
          (black      . "#141228")
          (red        . "#ff5458")
          (green      . "#62d196")
          (yellow     . "#ffb378")
          (blue       . "#65b2ff")
          (magenta    . "#906cff")
          (cyan       . "#63f2f1")
          (white      . "#a6b3cc")
          (br-black   . "#565575")
          (br-red     . "#ff8080")
          (br-green   . "#95ffa4")
          (br-yellow  . "#ffe9aa")
          (br-blue    . "#91ddff")
          (br-magenta . "#c991e1")
          (br-cyan    . "#aaffe4")
          (br-white   . "#cbe3e7")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key challengerdeep-colors)) 'unspecified))))

  (custom-theme-set-faces
   'challengerdeep

   `(default ((,class (:background ,(funcall safe-get-color 'bg)
                                   :foreground ,(funcall safe-get-color 'fg)))))
   `(cursor ((,class (:background ,(funcall safe-get-color 'cursor)
                                  :foreground ,(funcall safe-get-color 'cursor-txt)))))
   `(region ((,class (:background ,(funcall safe-get-color 'selection)
                                  :foreground ,(funcall safe-get-color 'selection-fg)))))
   `(highlight ((,class (:background ,(funcall safe-get-color 'selection)))))
   `(fringe ((,class (:background ,(funcall safe-get-color 'bg)))))
   `(minibuffer-prompt ((,class (:foreground ,(funcall safe-get-color 'blue)
                                             :weight bold))))
   `(show-paren-match ((,class (:background ,(funcall safe-get-color 'br-yellow)
                                            :foreground ,(funcall safe-get-color 'bg)
                                            :weight bold))))
   `(show-paren-mismatch ((,class (:background ,(funcall safe-get-color 'br-red)
                                               :foreground ,(funcall safe-get-color 'bg)
                                               :weight bold))))))

(provide-theme 'challengerdeep)
