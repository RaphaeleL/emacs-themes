(deftheme ocean
  "ocean-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (ocean-colors
        '(
          (bg         . "#224fbc")
          (fg         . "#ffffff")
          (cursor     . "#7f7f7f")
          (cursor-txt . "#ffffff")
          (selection  . "#216dff")
          (selection-fg . "#ffffff")
          (black      . "#000000")
          (red        . "#990000")
          (green      . "#00a600")
          (yellow     . "#999900")
          (blue       . "#0000b2")
          (magenta    . "#b200b2")
          (cyan       . "#00a6b2")
          (white      . "#bfbfbf")
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
                         (or (cdr (assoc key ocean-colors)) 'unspecified))))

  (custom-theme-set-faces
   'ocean

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

(provide-theme 'ocean)
