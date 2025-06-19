(deftheme elemental
  "elemental-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (elemental-colors
        '(
          (bg         . "#22211d")
          (fg         . "#807a74")
          (cursor     . "#facb80")
          (cursor-txt . "#161611")
          (selection  . "#413829")
          (selection-fg . "#facd77")
          (black      . "#3c3c30")
          (red        . "#98290f")
          (green      . "#479a43")
          (yellow     . "#7f7111")
          (blue       . "#497f7d")
          (magenta    . "#7f4e2f")
          (cyan       . "#387f58")
          (white      . "#807974")
          (br-black   . "#555445")
          (br-red     . "#e0502a")
          (br-green   . "#61e070")
          (br-yellow  . "#d69927")
          (br-blue    . "#79d9d9")
          (br-magenta . "#cd7c54")
          (br-cyan    . "#59d599")
          (br-white   . "#fff1e9")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key elemental-colors)) 'unspecified))))

  (custom-theme-set-faces
   'elemental

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

(provide-theme 'elemental)
