(deftheme nvimlight
  "nvimlight-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (nvimlight-colors
        '(
          (bg         . "#e0e2ea")
          (fg         . "#14161b")
          (cursor     . "#9b9ea4")
          (cursor-txt . "#14161b")
          (selection  . "#9b9ea4")
          (selection-fg . "#14161b")
          (black      . "#07080d")
          (red        . "#590008")
          (green      . "#005523")
          (yellow     . "#6b5300")
          (blue       . "#004c73")
          (magenta    . "#470045")
          (cyan       . "#007373")
          (white      . "#eef1f8")
          (br-black   . "#4f5258")
          (br-red     . "#590008")
          (br-green   . "#005523")
          (br-yellow  . "#6b5300")
          (br-blue    . "#004c73")
          (br-magenta . "#470045")
          (br-cyan    . "#007373")
          (br-white   . "#eef1f8")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key nvimlight-colors)) 'unspecified))))

  (custom-theme-set-faces
   'nvimlight

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

(provide-theme 'nvimlight)
