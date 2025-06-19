(deftheme flat
  "flat-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (flat-colors
        '(
          (bg         . "#002240")
          (fg         . "#2cc55d")
          (cursor     . "#e5be0c")
          (cursor-txt . "#ffffff")
          (selection  . "#792b9c")
          (selection-fg . "#ffffff")
          (black      . "#222d3f")
          (red        . "#a82320")
          (green      . "#32a548")
          (yellow     . "#e58d11")
          (blue       . "#3167ac")
          (magenta    . "#781aa0")
          (cyan       . "#2c9370")
          (white      . "#b0b6ba")
          (br-black   . "#212c3c")
          (br-red     . "#d4312e")
          (br-green   . "#2d9440")
          (br-yellow  . "#e5be0c")
          (br-blue    . "#3c7dd2")
          (br-magenta . "#8230a7")
          (br-cyan    . "#35b387")
          (br-white   . "#e7eced")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key flat-colors)) 'unspecified))))

  (custom-theme-set-faces
   'flat

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

(provide-theme 'flat)
