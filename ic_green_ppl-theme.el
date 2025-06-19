(deftheme ic_green_ppl
  "ic_green_ppl-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (ic_green_ppl-colors
        '(
          (bg         . "#2c2c2c")
          (fg         . "#e0f1dc")
          (cursor     . "#47fa6b")
          (cursor-txt . "#292929")
          (selection  . "#116b41")
          (selection-fg . "#e0f1dc")
          (black      . "#014401")
          (red        . "#ff2736")
          (green      . "#41a638")
          (yellow     . "#76a831")
          (blue       . "#2ec3b9")
          (magenta    . "#50a096")
          (cyan       . "#3ca078")
          (white      . "#e6fef2")
          (br-black   . "#035c03")
          (br-red     . "#b4fa5c")
          (br-green   . "#aefb86")
          (br-yellow  . "#dafa87")
          (br-blue    . "#2efaeb")
          (br-magenta . "#50fafa")
          (br-cyan    . "#3cfac8")
          (br-white   . "#e0f1dc")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key ic_green_ppl-colors)) 'unspecified))))

  (custom-theme-set-faces
   'ic_green_ppl

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

(provide-theme 'ic_green_ppl)
