(deftheme broadcast
  "broadcast-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (broadcast-colors
        '(
          (bg         . "#2b2b2b")
          (fg         . "#e6e1dc")
          (cursor     . "#ffffff")
          (cursor-txt . "#e6e1dc")
          (selection  . "#5a647e")
          (selection-fg . "#e6e1dc")
          (black      . "#000000")
          (red        . "#da4939")
          (green      . "#519f50")
          (yellow     . "#ffd24a")
          (blue       . "#6d9cbe")
          (magenta    . "#d0d0ff")
          (cyan       . "#6e9cbe")
          (white      . "#ffffff")
          (br-black   . "#323232")
          (br-red     . "#ff7b6b")
          (br-green   . "#83d182")
          (br-yellow  . "#ffff7c")
          (br-blue    . "#9fcef0")
          (br-magenta . "#ffffff")
          (br-cyan    . "#a0cef0")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key broadcast-colors)) 'unspecified))))

  (custom-theme-set-faces
   'broadcast

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

(provide-theme 'broadcast)
