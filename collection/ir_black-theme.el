(deftheme ir_black
  "ir_black-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (ir_black-colors
        '(
          (bg         . "#000000")
          (fg         . "#f1f1f1")
          (cursor     . "#808080")
          (cursor-txt . "#ffffff")
          (selection  . "#b5d5ff")
          (selection-fg . "#000000")
          (black      . "#4f4f4f")
          (red        . "#fa6c60")
          (green      . "#a8ff60")
          (yellow     . "#fffeb7")
          (blue       . "#96cafe")
          (magenta    . "#fa73fd")
          (cyan       . "#c6c5fe")
          (white      . "#efedef")
          (br-black   . "#7b7b7b")
          (br-red     . "#fcb6b0")
          (br-green   . "#cfffab")
          (br-yellow  . "#ffffcc")
          (br-blue    . "#b5dcff")
          (br-magenta . "#fb9cfe")
          (br-cyan    . "#e0e0fe")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key ir_black-colors)) 'unspecified))))

  (custom-theme-set-faces
   'ir_black

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

(provide-theme 'ir_black)
