(deftheme wombat
  "wombat-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (wombat-colors
        '(
          (bg         . "#171717")
          (fg         . "#dedacf")
          (cursor     . "#bbbbbb")
          (cursor-txt . "#ffffff")
          (selection  . "#453b39")
          (selection-fg . "#b6bbc0")
          (black      . "#000000")
          (red        . "#ff615a")
          (green      . "#b1e969")
          (yellow     . "#ebd99c")
          (blue       . "#5da9f6")
          (magenta    . "#e86aff")
          (cyan       . "#82fff7")
          (white      . "#dedacf")
          (br-black   . "#313131")
          (br-red     . "#f58c80")
          (br-green   . "#ddf88f")
          (br-yellow  . "#eee5b2")
          (br-blue    . "#a5c7ff")
          (br-magenta . "#ddaaff")
          (br-cyan    . "#b7fff9")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key wombat-colors)) 'unspecified))))

  (custom-theme-set-faces
   'wombat

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

(provide-theme 'wombat)
