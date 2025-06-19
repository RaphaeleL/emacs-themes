(deftheme abernathy
  "abernathy-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (abernathy-colors
        '(
          (bg         . "#111416")
          (fg         . "#eeeeec")
          (cursor     . "#bbbbbb")
          (cursor-txt . "#ffffff")
          (selection  . "#eeeeec")
          (selection-fg . "#333333")
          (black      . "#000000")
          (red        . "#cd0000")
          (green      . "#00cd00")
          (yellow     . "#cdcd00")
          (blue       . "#1093f5")
          (magenta    . "#cd00cd")
          (cyan       . "#00cdcd")
          (white      . "#faebd7")
          (br-black   . "#404040")
          (br-red     . "#ff0000")
          (br-green   . "#00ff00")
          (br-yellow  . "#ffff00")
          (br-blue    . "#11b5f6")
          (br-magenta . "#ff00ff")
          (br-cyan    . "#00ffff")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key abernathy-colors)) 'unspecified))))

  (custom-theme-set-faces
   'abernathy

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

(provide-theme 'abernathy)
