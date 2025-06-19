(deftheme citruszest
  "citruszest-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (citruszest-colors
        '(
          (bg         . "#121212")
          (fg         . "#bfbfbf")
          (cursor     . "#666666")
          (cursor-txt . "#f9f9f9")
          (selection  . "#ff8c00")
          (selection-fg . "#f4f4f4")
          (black      . "#404040")
          (red        . "#ff5454")
          (green      . "#00cc7a")
          (yellow     . "#ffd400")
          (blue       . "#00bfff")
          (magenta    . "#ff90fe")
          (cyan       . "#48d1cc")
          (white      . "#bfbfbf")
          (br-black   . "#808080")
          (br-red     . "#ff1a75")
          (br-green   . "#1affa3")
          (br-yellow  . "#ffff00")
          (br-blue    . "#33cfff")
          (br-magenta . "#ffb2fe")
          (br-cyan    . "#00fff2")
          (br-white   . "#f9f9f9")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key citruszest-colors)) 'unspecified))))

  (custom-theme-set-faces
   'citruszest

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

(provide-theme 'citruszest)
