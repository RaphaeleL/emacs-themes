(deftheme hax0r_blue
  "hax0r_blue-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (hax0r_blue-colors
        '(
          (bg         . "#010515")
          (fg         . "#11b7ff")
          (cursor     . "#10b6ff")
          (cursor-txt . "#ffffff")
          (selection  . "#c1e4ff")
          (selection-fg . "#f6f6f6")
          (black      . "#010921")
          (red        . "#10b6ff")
          (green      . "#10b6ff")
          (yellow     . "#10b6ff")
          (blue       . "#10b6ff")
          (magenta    . "#10b6ff")
          (cyan       . "#10b6ff")
          (white      . "#fafafa")
          (br-black   . "#080117")
          (br-red     . "#00b3f7")
          (br-green   . "#00b3f7")
          (br-yellow  . "#00b3f7")
          (br-blue    . "#00b3f7")
          (br-magenta . "#00b3f7")
          (br-cyan    . "#00b3f7")
          (br-white   . "#fefefe")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key hax0r_blue-colors)) 'unspecified))))

  (custom-theme-set-faces
   'hax0r_blue

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

(provide-theme 'hax0r_blue)
