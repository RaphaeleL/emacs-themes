(deftheme cobalt_neon
  "cobalt_neon-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (cobalt_neon-colors
        '(
          (bg         . "#142838")
          (fg         . "#8ff586")
          (cursor     . "#c4206f")
          (cursor-txt . "#8ff586")
          (selection  . "#094fb1")
          (selection-fg . "#8ff586")
          (black      . "#142631")
          (red        . "#ff2320")
          (green      . "#3ba5ff")
          (yellow     . "#e9e75c")
          (blue       . "#8ff586")
          (magenta    . "#781aa0")
          (cyan       . "#8ff586")
          (white      . "#ba46b2")
          (br-black   . "#fff688")
          (br-red     . "#d4312e")
          (br-green   . "#8ff586")
          (br-yellow  . "#e9f06d")
          (br-blue    . "#3c7dd2")
          (br-magenta . "#8230a7")
          (br-cyan    . "#6cbc67")
          (br-white   . "#8ff586")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key cobalt_neon-colors)) 'unspecified))))

  (custom-theme-set-faces
   'cobalt_neon

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

(provide-theme 'cobalt_neon)
