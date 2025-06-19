(deftheme tomorrow_night
  "tomorrow_night-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (tomorrow_night-colors
        '(
          (bg         . "#1d1f21")
          (fg         . "#c5c8c6")
          (cursor     . "#c5c8c6")
          (cursor-txt . "#1d1f21")
          (selection  . "#373b41")
          (selection-fg . "#c5c8c6")
          (black      . "#000000")
          (red        . "#cc6666")
          (green      . "#b5bd68")
          (yellow     . "#f0c674")
          (blue       . "#81a2be")
          (magenta    . "#b294bb")
          (cyan       . "#8abeb7")
          (white      . "#ffffff")
          (br-black   . "#000000")
          (br-red     . "#cc6666")
          (br-green   . "#b5bd68")
          (br-yellow  . "#f0c674")
          (br-blue    . "#81a2be")
          (br-magenta . "#b294bb")
          (br-cyan    . "#8abeb7")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key tomorrow_night-colors)) 'unspecified))))

  (custom-theme-set-faces
   'tomorrow_night

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

(provide-theme 'tomorrow_night)
