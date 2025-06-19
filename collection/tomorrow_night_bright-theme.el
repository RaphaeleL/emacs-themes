(deftheme tomorrow_night_bright
  "tomorrow_night_bright-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (tomorrow_night_bright-colors
        '(
          (bg         . "#000000")
          (fg         . "#eaeaea")
          (cursor     . "#eaeaea")
          (cursor-txt . "#000000")
          (selection  . "#424242")
          (selection-fg . "#eaeaea")
          (black      . "#000000")
          (red        . "#d54e53")
          (green      . "#b9ca4a")
          (yellow     . "#e7c547")
          (blue       . "#7aa6da")
          (magenta    . "#c397d8")
          (cyan       . "#70c0b1")
          (white      . "#ffffff")
          (br-black   . "#000000")
          (br-red     . "#d54e53")
          (br-green   . "#b9ca4a")
          (br-yellow  . "#e7c547")
          (br-blue    . "#7aa6da")
          (br-magenta . "#c397d8")
          (br-cyan    . "#70c0b1")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key tomorrow_night_bright-colors)) 'unspecified))))

  (custom-theme-set-faces
   'tomorrow_night_bright

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

(provide-theme 'tomorrow_night_bright)
