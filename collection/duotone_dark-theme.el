(deftheme duotone_dark
  "duotone_dark-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (duotone_dark-colors
        '(
          (bg         . "#1f1d27")
          (fg         . "#b7a1ff")
          (cursor     . "#ff9839")
          (cursor-txt . "#1f1d27")
          (selection  . "#353147")
          (selection-fg . "#b7a2ff")
          (black      . "#1f1d27")
          (red        . "#d9393e")
          (green      . "#2dcd73")
          (yellow     . "#d9b76e")
          (blue       . "#ffc284")
          (magenta    . "#de8d40")
          (cyan       . "#2488ff")
          (white      . "#b7a1ff")
          (br-black   . "#353147")
          (br-red     . "#d9393e")
          (br-green   . "#2dcd73")
          (br-yellow  . "#d9b76e")
          (br-blue    . "#ffc284")
          (br-magenta . "#de8d40")
          (br-cyan    . "#2488ff")
          (br-white   . "#eae5ff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key duotone_dark-colors)) 'unspecified))))

  (custom-theme-set-faces
   'duotone_dark

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

(provide-theme 'duotone_dark)
