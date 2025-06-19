(deftheme man_page
  "man_page-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (man_page-colors
        '(
          (bg         . "#fef49c")
          (fg         . "#000000")
          (cursor     . "#7f7f7f")
          (cursor-txt . "#000000")
          (selection  . "#a4c9cd")
          (selection-fg . "#000000")
          (black      . "#000000")
          (red        . "#cc0000")
          (green      . "#00a600")
          (yellow     . "#999900")
          (blue       . "#0000b2")
          (magenta    . "#b200b2")
          (cyan       . "#00a6b2")
          (white      . "#cccccc")
          (br-black   . "#666666")
          (br-red     . "#e50000")
          (br-green   . "#00d900")
          (br-yellow  . "#e5e500")
          (br-blue    . "#0000ff")
          (br-magenta . "#e500e5")
          (br-cyan    . "#00e5e5")
          (br-white   . "#e5e5e5")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key man_page-colors)) 'unspecified))))

  (custom-theme-set-faces
   'man_page

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

(provide-theme 'man_page)
