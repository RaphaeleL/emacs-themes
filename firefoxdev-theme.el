(deftheme firefoxdev
  "firefoxdev-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (firefoxdev-colors
        '(
          (bg         . "#0e1011")
          (fg         . "#7c8fa4")
          (cursor     . "#708284")
          (cursor-txt . "#002831")
          (selection  . "#163c61")
          (selection-fg . "#f2f5f9")
          (black      . "#002831")
          (red        . "#e63853")
          (green      . "#5eb83c")
          (yellow     . "#a57706")
          (blue       . "#359ddf")
          (magenta    . "#d75cff")
          (cyan       . "#4b73a2")
          (white      . "#dcdcdc")
          (br-black   . "#001e27")
          (br-red     . "#e1003f")
          (br-green   . "#1d9000")
          (br-yellow  . "#cd9409")
          (br-blue    . "#006fc0")
          (br-magenta . "#a200da")
          (br-cyan    . "#005794")
          (br-white   . "#e2e2e2")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key firefoxdev-colors)) 'unspecified))))

  (custom-theme-set-faces
   'firefoxdev

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

(provide-theme 'firefoxdev)
