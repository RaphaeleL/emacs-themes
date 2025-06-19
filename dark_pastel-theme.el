(deftheme dark_pastel
  "dark_pastel-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (dark_pastel-colors
        '(
          (bg         . "#000000")
          (fg         . "#ffffff")
          (cursor     . "#bbbbbb")
          (cursor-txt . "#ffffff")
          (selection  . "#b5d5ff")
          (selection-fg . "#000000")
          (black      . "#000000")
          (red        . "#ff5555")
          (green      . "#55ff55")
          (yellow     . "#ffff55")
          (blue       . "#5555ff")
          (magenta    . "#ff55ff")
          (cyan       . "#55ffff")
          (white      . "#bbbbbb")
          (br-black   . "#555555")
          (br-red     . "#ff5555")
          (br-green   . "#55ff55")
          (br-yellow  . "#ffff55")
          (br-blue    . "#5555ff")
          (br-magenta . "#ff55ff")
          (br-cyan    . "#55ffff")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key dark_pastel-colors)) 'unspecified))))

  (custom-theme-set-faces
   'dark_pastel

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

(provide-theme 'dark_pastel)
