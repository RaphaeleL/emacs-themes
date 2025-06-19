(deftheme chester
  "chester-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (chester-colors
        '(
          (bg         . "#2c3643")
          (fg         . "#ffffff")
          (cursor     . "#b4b1b1")
          (cursor-txt . "#000000")
          (selection  . "#67747c")
          (selection-fg . "#ffffff")
          (black      . "#080200")
          (red        . "#fa5e5b")
          (green      . "#16c98d")
          (yellow     . "#ffc83f")
          (blue       . "#288ad6")
          (magenta    . "#d34590")
          (cyan       . "#28ddde")
          (white      . "#e7e7e7")
          (br-black   . "#6f6b68")
          (br-red     . "#fa5e5b")
          (br-green   . "#16c98d")
          (br-yellow  . "#feef6d")
          (br-blue    . "#278ad6")
          (br-magenta . "#d34590")
          (br-cyan    . "#27dede")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key chester-colors)) 'unspecified))))

  (custom-theme-set-faces
   'chester

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

(provide-theme 'chester)
