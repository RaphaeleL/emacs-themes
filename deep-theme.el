(deftheme deep
  "deep-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (deep-colors
        '(
          (bg         . "#090909")
          (fg         . "#cdcdcd")
          (cursor     . "#d0d0d0")
          (cursor-txt . "#151515")
          (selection  . "#780002")
          (selection-fg . "#ececec")
          (black      . "#000000")
          (red        . "#d70005")
          (green      . "#1cd915")
          (yellow     . "#d9bd26")
          (blue       . "#5665ff")
          (magenta    . "#b052da")
          (cyan       . "#50d2da")
          (white      . "#e0e0e0")
          (br-black   . "#535353")
          (br-red     . "#fb0007")
          (br-green   . "#22ff18")
          (br-yellow  . "#fedc2b")
          (br-blue    . "#9fa9ff")
          (br-magenta . "#e09aff")
          (br-cyan    . "#8df9ff")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key deep-colors)) 'unspecified))))

  (custom-theme-set-faces
   'deep

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

(provide-theme 'deep)
