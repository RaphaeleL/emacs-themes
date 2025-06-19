(deftheme desert
  "desert-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (desert-colors
        '(
          (bg         . "#333333")
          (fg         . "#ffffff")
          (cursor     . "#00ff00")
          (cursor-txt . "#000000")
          (selection  . "#b5d5ff")
          (selection-fg . "#000000")
          (black      . "#4d4d4d")
          (red        . "#ff2b2b")
          (green      . "#98fb98")
          (yellow     . "#f0e68c")
          (blue       . "#cd853f")
          (magenta    . "#ffdead")
          (cyan       . "#ffa0a0")
          (white      . "#f5deb3")
          (br-black   . "#555555")
          (br-red     . "#ff5555")
          (br-green   . "#55ff55")
          (br-yellow  . "#ffff55")
          (br-blue    . "#87ceff")
          (br-magenta . "#ff55ff")
          (br-cyan    . "#ffd700")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key desert-colors)) 'unspecified))))

  (custom-theme-set-faces
   'desert

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

(provide-theme 'desert)
