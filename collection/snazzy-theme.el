(deftheme snazzy
  "snazzy-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (snazzy-colors
        '(
          (bg         . "#1e1f29")
          (fg         . "#ebece6")
          (cursor     . "#e4e4e4")
          (cursor-txt . "#f6f6f6")
          (selection  . "#81aec6")
          (selection-fg . "#000000")
          (black      . "#000000")
          (red        . "#fc4346")
          (green      . "#50fb7c")
          (yellow     . "#f0fb8c")
          (blue       . "#49baff")
          (magenta    . "#fc4cb4")
          (cyan       . "#8be9fe")
          (white      . "#ededec")
          (br-black   . "#555555")
          (br-red     . "#fc4346")
          (br-green   . "#50fb7c")
          (br-yellow  . "#f0fb8c")
          (br-blue    . "#49baff")
          (br-magenta . "#fc4cb4")
          (br-cyan    . "#8be9fe")
          (br-white   . "#ededec")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key snazzy-colors)) 'unspecified))))

  (custom-theme-set-faces
   'snazzy

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

(provide-theme 'snazzy)
