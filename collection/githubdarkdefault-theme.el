(deftheme githubdarkdefault
  "githubdarkdefault-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (githubdarkdefault-colors
        '(
          (bg         . "#0d1117")
          (fg         . "#e6edf3")
          (cursor     . "#2f81f7")
          (cursor-txt . "#2f81f7")
          (selection  . "#e6edf3")
          (selection-fg . "#0d1117")
          (black      . "#484f58")
          (red        . "#ff7b72")
          (green      . "#3fb950")
          (yellow     . "#d29922")
          (blue       . "#58a6ff")
          (magenta    . "#bc8cff")
          (cyan       . "#39c5cf")
          (white      . "#b1bac4")
          (br-black   . "#6e7681")
          (br-red     . "#ffa198")
          (br-green   . "#56d364")
          (br-yellow  . "#e3b341")
          (br-blue    . "#79c0ff")
          (br-magenta . "#d2a8ff")
          (br-cyan    . "#56d4dd")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key githubdarkdefault-colors)) 'unspecified))))

  (custom-theme-set-faces
   'githubdarkdefault

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

(provide-theme 'githubdarkdefault)
