(deftheme crayonponyfish
  "crayonponyfish-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (crayonponyfish-colors
        '(
          (bg         . "#150707")
          (fg         . "#68525a")
          (cursor     . "#68525a")
          (cursor-txt . "#140707")
          (selection  . "#2b1b1d")
          (selection-fg . "#69525a")
          (black      . "#2b1b1d")
          (red        . "#91002b")
          (green      . "#579524")
          (yellow     . "#ab311b")
          (blue       . "#8c87b0")
          (magenta    . "#692f50")
          (cyan       . "#e8a866")
          (white      . "#68525a")
          (br-black   . "#3d2b2e")
          (br-red     . "#c5255d")
          (br-green   . "#8dff57")
          (br-yellow  . "#c8381d")
          (br-blue    . "#cfc9ff")
          (br-magenta . "#fc6cba")
          (br-cyan    . "#ffceaf")
          (br-white   . "#b0949d")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key crayonponyfish-colors)) 'unspecified))))

  (custom-theme-set-faces
   'crayonponyfish

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

(provide-theme 'crayonponyfish)
