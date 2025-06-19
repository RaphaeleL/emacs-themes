(deftheme dark_modern
  "dark_modern-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (dark_modern-colors
        '(
          (bg         . "#1f1f1f")
          (fg         . "#cccccc")
          (cursor     . "#ffffff")
          (cursor-txt . "#000000")
          (selection  . "#3a3d41")
          (selection-fg . "#e0e0e0")
          (black      . "#272727")
          (red        . "#f74949")
          (green      . "#2ea043")
          (yellow     . "#9e6a03")
          (blue       . "#0078d4")
          (magenta    . "#d01273")
          (cyan       . "#1db4d6")
          (white      . "#cccccc")
          (br-black   . "#5d5d5d")
          (br-red     . "#dc5452")
          (br-green   . "#23d18b")
          (br-yellow  . "#f5f543")
          (br-blue    . "#3b8eea")
          (br-magenta . "#d670d6")
          (br-cyan    . "#29b8db")
          (br-white   . "#e5e5e5")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key dark_modern-colors)) 'unspecified))))

  (custom-theme-set-faces
   'dark_modern

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

(provide-theme 'dark_modern)
