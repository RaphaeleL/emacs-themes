(deftheme floraverse
  "floraverse-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (floraverse-colors
        '(
          (bg         . "#0e0d15")
          (fg         . "#dbd1b9")
          (cursor     . "#bbbbbb")
          (cursor-txt . "#ffffff")
          (selection  . "#f3e0b8")
          (selection-fg . "#08002e")
          (black      . "#08002e")
          (red        . "#64002c")
          (green      . "#5d731a")
          (yellow     . "#cd751c")
          (blue       . "#1d6da1")
          (magenta    . "#b7077e")
          (cyan       . "#42a38c")
          (white      . "#f3e0b8")
          (br-black   . "#331e4d")
          (br-red     . "#d02063")
          (br-green   . "#b4ce59")
          (br-yellow  . "#fac357")
          (br-blue    . "#40a4cf")
          (br-magenta . "#f12aae")
          (br-cyan    . "#62caa8")
          (br-white   . "#fff5db")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key floraverse-colors)) 'unspecified))))

  (custom-theme-set-faces
   'floraverse

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

(provide-theme 'floraverse)
