(deftheme tomorrow_night_blue
  "tomorrow_night_blue-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (tomorrow_night_blue-colors
        '(
          (bg         . "#002451")
          (fg         . "#ffffff")
          (cursor     . "#ffffff")
          (cursor-txt . "#003f8e")
          (selection  . "#003f8e")
          (selection-fg . "#ffffff")
          (black      . "#000000")
          (red        . "#ff9da4")
          (green      . "#d1f1a9")
          (yellow     . "#ffeead")
          (blue       . "#bbdaff")
          (magenta    . "#ebbbff")
          (cyan       . "#99ffff")
          (white      . "#ffffff")
          (br-black   . "#000000")
          (br-red     . "#ff9da4")
          (br-green   . "#d1f1a9")
          (br-yellow  . "#ffeead")
          (br-blue    . "#bbdaff")
          (br-magenta . "#ebbbff")
          (br-cyan    . "#99ffff")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key tomorrow_night_blue-colors)) 'unspecified))))

  (custom-theme-set-faces
   'tomorrow_night_blue

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

(provide-theme 'tomorrow_night_blue)
