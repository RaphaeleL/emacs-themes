(deftheme apple_system_colors
  "apple_system_colors-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (apple_system_colors-colors
        '(
          (bg         . "#1e1e1e")
          (fg         . "#ffffff")
          (cursor     . "#98989d")
          (cursor-txt . "#ffffff")
          (selection  . "#3f638b")
          (selection-fg . "#ffffff")
          (black      . "#1a1a1a")
          (red        . "#cc372e")
          (green      . "#26a439")
          (yellow     . "#cdac08")
          (blue       . "#0869cb")
          (magenta    . "#9647bf")
          (cyan       . "#479ec2")
          (white      . "#98989d")
          (br-black   . "#464646")
          (br-red     . "#ff453a")
          (br-green   . "#32d74b")
          (br-yellow  . "#ffd60a")
          (br-blue    . "#0a84ff")
          (br-magenta . "#bf5af2")
          (br-cyan    . "#76d6ff")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key apple_system_colors-colors)) 'unspecified))))

  (custom-theme-set-faces
   'apple_system_colors

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

(provide-theme 'apple_system_colors)
