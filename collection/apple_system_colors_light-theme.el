(deftheme apple_system_colors_light
  "apple_system_colors_light-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (apple_system_colors_light-colors
        '(
          (bg         . "#feffff")
          (fg         . "#000000")
          (cursor     . "#98989d")
          (cursor-txt . "#ffffff")
          (selection  . "#b4d7ff")
          (selection-fg . "#000000")
          (black      . "#1a1a1a")
          (red        . "#bc4437")
          (green      . "#51a148")
          (yellow     . "#c7ad3a")
          (blue       . "#2e68c5")
          (magenta    . "#8c4bb8")
          (cyan       . "#5e9cbe")
          (white      . "#98989d")
          (br-black   . "#464646")
          (br-red     . "#eb5545")
          (br-green   . "#6bd45f")
          (br-yellow  . "#f8d84a")
          (br-blue    . "#3b82f7")
          (br-magenta . "#b260ea")
          (br-cyan    . "#8dd3fb")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key apple_system_colors_light-colors)) 'unspecified))))

  (custom-theme-set-faces
   'apple_system_colors_light

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

(provide-theme 'apple_system_colors_light)
