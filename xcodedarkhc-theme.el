(deftheme xcodedarkhc
  "xcodedarkhc-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (xcodedarkhc-colors
        '(
          (bg         . "#1f1f24")
          (fg         . "#ffffff")
          (cursor     . "#ffffff")
          (cursor-txt . "#1f1f24")
          (selection  . "#43454b")
          (selection-fg . "#ffffff")
          (black      . "#43454b")
          (red        . "#ff8a7a")
          (green      . "#83c9bc")
          (yellow     . "#d9c668")
          (blue       . "#4ec4e6")
          (magenta    . "#ff85b8")
          (cyan       . "#cda1ff")
          (white      . "#ffffff")
          (br-black   . "#838991")
          (br-red     . "#ff8a7a")
          (br-green   . "#b1faeb")
          (br-yellow  . "#ffa14f")
          (br-blue    . "#6bdfff")
          (br-magenta . "#ff85b8")
          (br-cyan    . "#e5cfff")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key xcodedarkhc-colors)) 'unspecified))))

  (custom-theme-set-faces
   'xcodedarkhc

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

(provide-theme 'xcodedarkhc)
