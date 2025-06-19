(deftheme borland
  "borland-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (borland-colors
        '(
          (bg         . "#0000a4")
          (fg         . "#ffff4e")
          (cursor     . "#ffa560")
          (cursor-txt . "#ffffff")
          (selection  . "#a4a4a4")
          (selection-fg . "#0000a4")
          (black      . "#4f4f4f")
          (red        . "#ff6c60")
          (green      . "#a8ff60")
          (yellow     . "#ffffb6")
          (blue       . "#96cbfe")
          (magenta    . "#ff73fd")
          (cyan       . "#c6c5fe")
          (white      . "#eeeeee")
          (br-black   . "#7c7c7c")
          (br-red     . "#ffb6b0")
          (br-green   . "#ceffac")
          (br-yellow  . "#ffffcc")
          (br-blue    . "#b5dcff")
          (br-magenta . "#ff9cfe")
          (br-cyan    . "#dfdffe")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key borland-colors)) 'unspecified))))

  (custom-theme-set-faces
   'borland

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

(provide-theme 'borland)
