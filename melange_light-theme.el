(deftheme melange_light
  "melange_light-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (melange_light-colors
        '(
          (bg         . "#f1f1f1")
          (fg         . "#54433a")
          (cursor     . "#54433a")
          (cursor-txt . "#f1f1f1")
          (selection  . "#54433a")
          (selection-fg . "#d9d3ce")
          (black      . "#e9e1db")
          (red        . "#c77b8b")
          (green      . "#6e9b72")
          (yellow     . "#bc5c00")
          (blue       . "#7892bd")
          (magenta    . "#be79bb")
          (cyan       . "#739797")
          (white      . "#7d6658")
          (br-black   . "#a98a78")
          (br-red     . "#bf0021")
          (br-green   . "#3a684a")
          (br-yellow  . "#a06d00")
          (br-blue    . "#465aa4")
          (br-magenta . "#904180")
          (br-cyan    . "#3d6568")
          (br-white   . "#54433a")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key melange_light-colors)) 'unspecified))))

  (custom-theme-set-faces
   'melange_light

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

(provide-theme 'melange_light)
