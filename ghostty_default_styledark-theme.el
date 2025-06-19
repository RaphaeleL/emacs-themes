(deftheme ghostty_default_styledark
  "ghostty_default_styledark-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (ghostty_default_styledark-colors
        '(
          (bg         . "#292c33")
          (fg         . "#ffffff")
          (cursor     . "#ffffff")
          (cursor-txt . "#363a43")
          (selection  . "#ffffff")
          (selection-fg . "#292c33")
          (black      . "#1d1f21")
          (red        . "#bf6b69")
          (green      . "#b7bd73")
          (yellow     . "#e9c880")
          (blue       . "#88a1bb")
          (magenta    . "#ad95b8")
          (cyan       . "#95bdb7")
          (white      . "#c5c8c6")
          (br-black   . "#666666")
          (br-red     . "#c55757")
          (br-green   . "#bcc95f")
          (br-yellow  . "#e1c65e")
          (br-blue    . "#83a5d6")
          (br-magenta . "#bc99d4")
          (br-cyan    . "#83beb1")
          (br-white   . "#eaeaea")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key ghostty_default_styledark-colors)) 'unspecified))))

  (custom-theme-set-faces
   'ghostty_default_styledark

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

(provide-theme 'ghostty_default_styledark)
