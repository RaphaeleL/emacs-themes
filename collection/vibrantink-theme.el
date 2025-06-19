(deftheme vibrantink
  "vibrantink-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (vibrantink-colors
        '(
          (bg         . "#000000")
          (fg         . "#ffffff")
          (cursor     . "#ffffff")
          (cursor-txt . "#000000")
          (selection  . "#b5d5ff")
          (selection-fg . "#000000")
          (black      . "#878787")
          (red        . "#ff6600")
          (green      . "#ccff04")
          (yellow     . "#ffcc00")
          (blue       . "#44b4cc")
          (magenta    . "#9933cc")
          (cyan       . "#44b4cc")
          (white      . "#f5f5f5")
          (br-black   . "#555555")
          (br-red     . "#ff0000")
          (br-green   . "#00ff00")
          (br-yellow  . "#ffff00")
          (br-blue    . "#0000ff")
          (br-magenta . "#ff00ff")
          (br-cyan    . "#00ffff")
          (br-white   . "#e5e5e5")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key vibrantink-colors)) 'unspecified))))

  (custom-theme-set-faces
   'vibrantink

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

(provide-theme 'vibrantink)
