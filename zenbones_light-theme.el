(deftheme zenbones_light
  "zenbones_light-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (zenbones_light-colors
        '(
          (bg         . "#f0edec")
          (fg         . "#2c363c")
          (cursor     . "#2c363c")
          (cursor-txt . "#f0edec")
          (selection  . "#cbd9e3")
          (selection-fg . "#2c363c")
          (black      . "#f0edec")
          (red        . "#a8334c")
          (green      . "#4f6c31")
          (yellow     . "#944927")
          (blue       . "#286486")
          (magenta    . "#88507d")
          (cyan       . "#3b8992")
          (white      . "#2c363c")
          (br-black   . "#cfc1ba")
          (br-red     . "#94253e")
          (br-green   . "#3f5a22")
          (br-yellow  . "#803d1c")
          (br-blue    . "#1d5573")
          (br-magenta . "#7b3b70")
          (br-cyan    . "#2b747c")
          (br-white   . "#4f5e68")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key zenbones_light-colors)) 'unspecified))))

  (custom-theme-set-faces
   'zenbones_light

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

(provide-theme 'zenbones_light)
