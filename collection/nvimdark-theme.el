(deftheme nvimdark
  "nvimdark-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (nvimdark-colors
        '(
          (bg         . "#14161b")
          (fg         . "#e0e2ea")
          (cursor     . "#9b9ea4")
          (cursor-txt . "#e0e2ea")
          (selection  . "#4f5258")
          (selection-fg . "#e0e2ea")
          (black      . "#07080d")
          (red        . "#ffc0b9")
          (green      . "#b3f6c0")
          (yellow     . "#fce094")
          (blue       . "#a6dbff")
          (magenta    . "#ffcaff")
          (cyan       . "#8cf8f7")
          (white      . "#eef1f8")
          (br-black   . "#4f5258")
          (br-red     . "#ffc0b9")
          (br-green   . "#b3f6c0")
          (br-yellow  . "#fce094")
          (br-blue    . "#a6dbff")
          (br-magenta . "#ffcaff")
          (br-cyan    . "#8cf8f7")
          (br-white   . "#eef1f8")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key nvimdark-colors)) 'unspecified))))

  (custom-theme-set-faces
   'nvimdark

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

(provide-theme 'nvimdark)
