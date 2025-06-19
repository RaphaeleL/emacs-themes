(deftheme xcodewwdc
  "xcodewwdc-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (xcodewwdc-colors
        '(
          (bg         . "#292c36")
          (fg         . "#e7e8eb")
          (cursor     . "#e7e8eb")
          (cursor-txt . "#292c36")
          (selection  . "#494d5c")
          (selection-fg . "#e7e8eb")
          (black      . "#494d5c")
          (red        . "#bb383a")
          (green      . "#94c66e")
          (yellow     . "#d28e5d")
          (blue       . "#8884c5")
          (magenta    . "#b73999")
          (cyan       . "#00aba4")
          (white      . "#e7e8eb")
          (br-black   . "#7f869e")
          (br-red     . "#bb383a")
          (br-green   . "#94c66e")
          (br-yellow  . "#d28e5d")
          (br-blue    . "#8884c5")
          (br-magenta . "#b73999")
          (br-cyan    . "#00aba4")
          (br-white   . "#e7e8eb")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key xcodewwdc-colors)) 'unspecified))))

  (custom-theme-set-faces
   'xcodewwdc

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

(provide-theme 'xcodewwdc)
