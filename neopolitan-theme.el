(deftheme neopolitan
  "neopolitan-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (neopolitan-colors
        '(
          (bg         . "#271f19")
          (fg         . "#ffffff")
          (cursor     . "#ffffff")
          (cursor-txt . "#ffffff")
          (selection  . "#253b76")
          (selection-fg . "#ffffff")
          (black      . "#000000")
          (red        . "#800000")
          (green      . "#61ce3c")
          (yellow     . "#fbde2d")
          (blue       . "#253b76")
          (magenta    . "#ff0080")
          (cyan       . "#8da6ce")
          (white      . "#f8f8f8")
          (br-black   . "#000000")
          (br-red     . "#800000")
          (br-green   . "#61ce3c")
          (br-yellow  . "#fbde2d")
          (br-blue    . "#253b76")
          (br-magenta . "#ff0080")
          (br-cyan    . "#8da6ce")
          (br-white   . "#f8f8f8")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key neopolitan-colors)) 'unspecified))))

  (custom-theme-set-faces
   'neopolitan

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

(provide-theme 'neopolitan)
