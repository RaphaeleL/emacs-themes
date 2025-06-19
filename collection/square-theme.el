(deftheme square
  "square-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (square-colors
        '(
          (bg         . "#1a1a1a")
          (fg         . "#acacab")
          (cursor     . "#fcfbcc")
          (cursor-txt . "#000000")
          (selection  . "#4d4d4d")
          (selection-fg . "#ffffff")
          (black      . "#050505")
          (red        . "#e9897c")
          (green      . "#b6377d")
          (yellow     . "#ecebbe")
          (blue       . "#a9cdeb")
          (magenta    . "#75507b")
          (cyan       . "#c9caec")
          (white      . "#f2f2f2")
          (br-black   . "#141414")
          (br-red     . "#f99286")
          (br-green   . "#c3f786")
          (br-yellow  . "#fcfbcc")
          (br-blue    . "#b6defb")
          (br-magenta . "#ad7fa8")
          (br-cyan    . "#d7d9fc")
          (br-white   . "#e2e2e2")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key square-colors)) 'unspecified))))

  (custom-theme-set-faces
   'square

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

(provide-theme 'square)
