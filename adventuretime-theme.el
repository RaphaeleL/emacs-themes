(deftheme adventuretime
  "adventuretime-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (adventuretime-colors
        '(
          (bg         . "#1f1d45")
          (fg         . "#f8dcc0")
          (cursor     . "#efbf38")
          (cursor-txt . "#08080a")
          (selection  . "#706b4e")
          (selection-fg . "#f3d9c4")
          (black      . "#050404")
          (red        . "#bd0013")
          (green      . "#4ab118")
          (yellow     . "#e7741e")
          (blue       . "#0f4ac6")
          (magenta    . "#665993")
          (cyan       . "#70a598")
          (white      . "#f8dcc0")
          (br-black   . "#4e7cbf")
          (br-red     . "#fc5f5a")
          (br-green   . "#9eff6e")
          (br-yellow  . "#efc11a")
          (br-blue    . "#1997c6")
          (br-magenta . "#9b5953")
          (br-cyan    . "#c8faf4")
          (br-white   . "#f6f5fb")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key adventuretime-colors)) 'unspecified))))

  (custom-theme-set-faces
   'adventuretime

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

(provide-theme 'adventuretime)
