(deftheme aurora
  "aurora-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (aurora-colors
        '(
          (bg         . "#23262e")
          (fg         . "#ffca28")
          (cursor     . "#ee5d43")
          (cursor-txt . "#ffd29c")
          (selection  . "#292e38")
          (selection-fg . "#00e8c6")
          (black      . "#23262e")
          (red        . "#f0266f")
          (green      . "#8fd46d")
          (yellow     . "#ffe66d")
          (blue       . "#0321d7")
          (magenta    . "#ee5d43")
          (cyan       . "#03d6b8")
          (white      . "#c74ded")
          (br-black   . "#292e38")
          (br-red     . "#f92672")
          (br-green   . "#8fd46d")
          (br-yellow  . "#ffe66d")
          (br-blue    . "#03d6b8")
          (br-magenta . "#ee5d43")
          (br-cyan    . "#03d6b8")
          (br-white   . "#c74ded")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key aurora-colors)) 'unspecified))))

  (custom-theme-set-faces
   'aurora

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

(provide-theme 'aurora)
