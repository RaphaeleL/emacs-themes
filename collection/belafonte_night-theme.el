(deftheme belafonte_night
  "belafonte_night-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (belafonte_night-colors
        '(
          (bg         . "#20111b")
          (fg         . "#968c83")
          (cursor     . "#968c83")
          (cursor-txt . "#20111b")
          (selection  . "#45373c")
          (selection-fg . "#968c83")
          (black      . "#20111b")
          (red        . "#be100e")
          (green      . "#858162")
          (yellow     . "#eaa549")
          (blue       . "#426a79")
          (magenta    . "#97522c")
          (cyan       . "#989a9c")
          (white      . "#968c83")
          (br-black   . "#5e5252")
          (br-red     . "#be100e")
          (br-green   . "#858162")
          (br-yellow  . "#eaa549")
          (br-blue    . "#426a79")
          (br-magenta . "#97522c")
          (br-cyan    . "#989a9c")
          (br-white   . "#d5ccba")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key belafonte_night-colors)) 'unspecified))))

  (custom-theme-set-faces
   'belafonte_night

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

(provide-theme 'belafonte_night)
