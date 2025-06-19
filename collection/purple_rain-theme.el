(deftheme purple_rain
  "purple_rain-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (purple_rain-colors
        '(
          (bg         . "#21084a")
          (fg         . "#fffbf6")
          (cursor     . "#ff271d")
          (cursor-txt . "#ff271d")
          (selection  . "#287691")
          (selection-fg . "#ffffff")
          (black      . "#000000")
          (red        . "#ff260e")
          (green      . "#9be205")
          (yellow     . "#ffc400")
          (blue       . "#00a2fa")
          (magenta    . "#815bb5")
          (cyan       . "#00deef")
          (white      . "#ffffff")
          (br-black   . "#565656")
          (br-red     . "#ff4250")
          (br-green   . "#b8e36e")
          (br-yellow  . "#ffd852")
          (br-blue    . "#00a6ff")
          (br-magenta . "#ac7bf0")
          (br-cyan    . "#74fdf3")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key purple_rain-colors)) 'unspecified))))

  (custom-theme-set-faces
   'purple_rain

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

(provide-theme 'purple_rain)
