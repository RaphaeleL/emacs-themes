(deftheme argonaut
  "argonaut-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (argonaut-colors
        '(
          (bg         . "#0e1019")
          (fg         . "#fffaf4")
          (cursor     . "#ff0018")
          (cursor-txt . "#ff0018")
          (selection  . "#002a3b")
          (selection-fg . "#ffffff")
          (black      . "#232323")
          (red        . "#ff000f")
          (green      . "#8ce10b")
          (yellow     . "#ffb900")
          (blue       . "#008df8")
          (magenta    . "#6d43a6")
          (cyan       . "#00d8eb")
          (white      . "#ffffff")
          (br-black   . "#444444")
          (br-red     . "#ff2740")
          (br-green   . "#abe15b")
          (br-yellow  . "#ffd242")
          (br-blue    . "#0092ff")
          (br-magenta . "#9a5feb")
          (br-cyan    . "#67fff0")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key argonaut-colors)) 'unspecified))))

  (custom-theme-set-faces
   'argonaut

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

(provide-theme 'argonaut)
