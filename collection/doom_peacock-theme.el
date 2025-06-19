(deftheme doom_peacock
  "doom_peacock-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (doom_peacock-colors
        '(
          (bg         . "#2b2a27")
          (fg         . "#ede0ce")
          (cursor     . "#9c9c9d")
          (cursor-txt . "#36312b")
          (selection  . "#a60033")
          (selection-fg . "#ffffff")
          (black      . "#1c1f24")
          (red        . "#cb4b16")
          (green      . "#26a6a6")
          (yellow     . "#bcd42a")
          (blue       . "#2a6cc6")
          (magenta    . "#a9a1e1")
          (cyan       . "#5699af")
          (white      . "#ede0ce")
          (br-black   . "#2b2a27")
          (br-red     . "#ff5d38")
          (br-green   . "#98be65")
          (br-yellow  . "#e6f972")
          (br-blue    . "#51afef")
          (br-magenta . "#c678dd")
          (br-cyan    . "#46d9ff")
          (br-white   . "#dfdfdf")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key doom_peacock-colors)) 'unspecified))))

  (custom-theme-set-faces
   'doom_peacock

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

(provide-theme 'doom_peacock)
