(deftheme zenwritten_light
  "zenwritten_light-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (zenwritten_light-colors
        '(
          (bg         . "#eeeeee")
          (fg         . "#353535")
          (cursor     . "#353535")
          (cursor-txt . "#eeeeee")
          (selection  . "#d7d7d7")
          (selection-fg . "#353535")
          (black      . "#eeeeee")
          (red        . "#a8334c")
          (green      . "#4f6c31")
          (yellow     . "#944927")
          (blue       . "#286486")
          (magenta    . "#88507d")
          (cyan       . "#3b8992")
          (white      . "#353535")
          (br-black   . "#c6c3c3")
          (br-red     . "#94253e")
          (br-green   . "#3f5a22")
          (br-yellow  . "#803d1c")
          (br-blue    . "#1d5573")
          (br-magenta . "#7b3b70")
          (br-cyan    . "#2b747c")
          (br-white   . "#5c5c5c")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key zenwritten_light-colors)) 'unspecified))))

  (custom-theme-set-faces
   'zenwritten_light

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

(provide-theme 'zenwritten_light)
