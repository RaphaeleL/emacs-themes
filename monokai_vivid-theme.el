(deftheme monokai_vivid
  "monokai_vivid-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (monokai_vivid-colors
        '(
          (bg         . "#121212")
          (fg         . "#f9f9f9")
          (cursor     . "#fb0007")
          (cursor-txt . "#ea0009")
          (selection  . "#ffffff")
          (selection-fg . "#000000")
          (black      . "#121212")
          (red        . "#fa2934")
          (green      . "#98e123")
          (yellow     . "#fff30a")
          (blue       . "#0443ff")
          (magenta    . "#f800f8")
          (cyan       . "#01b6ed")
          (white      . "#ffffff")
          (br-black   . "#838383")
          (br-red     . "#f6669d")
          (br-green   . "#b1e05f")
          (br-yellow  . "#fff26d")
          (br-blue    . "#0443ff")
          (br-magenta . "#f200f6")
          (br-cyan    . "#51ceff")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key monokai_vivid-colors)) 'unspecified))))

  (custom-theme-set-faces
   'monokai_vivid

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

(provide-theme 'monokai_vivid)
