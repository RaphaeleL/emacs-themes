(deftheme raycast_light
  "raycast_light-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (raycast_light-colors
        '(
          (bg         . "#ffffff")
          (fg         . "#000000")
          (cursor     . "#000000")
          (cursor-txt . "#000000")
          (selection  . "#e5e5e5")
          (selection-fg . "#000000")
          (black      . "#000000")
          (red        . "#b12424")
          (green      . "#006b4f")
          (yellow     . "#f8a300")
          (blue       . "#138af2")
          (magenta    . "#9a1b6e")
          (cyan       . "#3eb8bf")
          (white      . "#ffffff")
          (br-black   . "#000000")
          (br-red     . "#b12424")
          (br-green   . "#006b4f")
          (br-yellow  . "#f8a300")
          (br-blue    . "#138af2")
          (br-magenta . "#9a1b6e")
          (br-cyan    . "#3eb8bf")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key raycast_light-colors)) 'unspecified))))

  (custom-theme-set-faces
   'raycast_light

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

(provide-theme 'raycast_light)
