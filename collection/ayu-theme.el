(deftheme ayu
  "ayu-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (ayu-colors
        '(
          (bg         . "#0f1419")
          (fg         . "#e6e1cf")
          (cursor     . "#f29718")
          (cursor-txt . "#e6e1cf")
          (selection  . "#253340")
          (selection-fg . "#e6e1cf")
          (black      . "#000000")
          (red        . "#ff3333")
          (green      . "#b8cc52")
          (yellow     . "#e7c547")
          (blue       . "#36a3d9")
          (magenta    . "#f07178")
          (cyan       . "#95e6cb")
          (white      . "#ffffff")
          (br-black   . "#323232")
          (br-red     . "#ff6565")
          (br-green   . "#eafe84")
          (br-yellow  . "#fff779")
          (br-blue    . "#68d5ff")
          (br-magenta . "#ffa3aa")
          (br-cyan    . "#c7fffd")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key ayu-colors)) 'unspecified))))

  (custom-theme-set-faces
   'ayu

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

(provide-theme 'ayu)
