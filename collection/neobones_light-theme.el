(deftheme neobones_light
  "neobones_light-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (neobones_light-colors
        '(
          (bg         . "#e5ede6")
          (fg         . "#202e18")
          (cursor     . "#202e18")
          (cursor-txt . "#e5ede6")
          (selection  . "#ade48c")
          (selection-fg . "#202e18")
          (black      . "#e5ede6")
          (red        . "#a8334c")
          (green      . "#567a30")
          (yellow     . "#944927")
          (blue       . "#286486")
          (magenta    . "#88507d")
          (cyan       . "#3b8992")
          (white      . "#202e18")
          (br-black   . "#b3c6b6")
          (br-red     . "#94253e")
          (br-green   . "#3f5a22")
          (br-yellow  . "#803d1c")
          (br-blue    . "#1d5573")
          (br-magenta . "#7b3b70")
          (br-cyan    . "#2b747c")
          (br-white   . "#415934")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key neobones_light-colors)) 'unspecified))))

  (custom-theme-set-faces
   'neobones_light

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

(provide-theme 'neobones_light)
