(deftheme horizonbright
  "horizonbright-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (horizonbright-colors
        '(
          (bg         . "#fbf0ee")
          (fg         . "#16161c")
          (cursor     . "#f2d0c5")
          (cursor-txt . "#f2d0c5")
          (selection  . "#f2d0c5")
          (selection-fg . "#16161c")
          (black      . "#16161c")
          (red        . "#e95678")
          (green      . "#29d398")
          (yellow     . "#fab795")
          (blue       . "#26bbd9")
          (magenta    . "#ee64ae")
          (cyan       . "#59e3e3")
          (white      . "#fdf0ed")
          (br-black   . "#1a1c23")
          (br-red     . "#ec6a88")
          (br-green   . "#3fdaa4")
          (br-yellow  . "#fbc3a7")
          (br-blue    . "#3fc6de")
          (br-magenta . "#f075b7")
          (br-cyan    . "#6be6e6")
          (br-white   . "#fff3f0")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key horizonbright-colors)) 'unspecified))))

  (custom-theme-set-faces
   'horizonbright

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

(provide-theme 'horizonbright)
