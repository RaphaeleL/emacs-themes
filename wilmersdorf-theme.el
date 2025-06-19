(deftheme wilmersdorf
  "wilmersdorf-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (wilmersdorf-colors
        '(
          (bg         . "#282b33")
          (fg         . "#c6c6c6")
          (cursor     . "#7ebebd")
          (cursor-txt . "#1f2024")
          (selection  . "#1f2024")
          (selection-fg . "#c6c6c6")
          (black      . "#34373e")
          (red        . "#e06383")
          (green      . "#7ebebd")
          (yellow     . "#cccccc")
          (blue       . "#a6c1e0")
          (magenta    . "#e1c1ee")
          (cyan       . "#5b94ab")
          (white      . "#ababab")
          (br-black   . "#434750")
          (br-red     . "#fa7193")
          (br-green   . "#8fd7d6")
          (br-yellow  . "#d1dfff")
          (br-blue    . "#b2cff0")
          (br-magenta . "#efccfd")
          (br-cyan    . "#69abc5")
          (br-white   . "#d3d3d3")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key wilmersdorf-colors)) 'unspecified))))

  (custom-theme-set-faces
   'wilmersdorf

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

(provide-theme 'wilmersdorf)
