(deftheme spiderman
  "spiderman-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (spiderman-colors
        '(
          (bg         . "#1b1d1e")
          (fg         . "#e3e3e3")
          (cursor     . "#2c3fff")
          (cursor-txt . "#000000")
          (selection  . "#070e50")
          (selection-fg . "#f0272d")
          (black      . "#1b1d1e")
          (red        . "#e60813")
          (green      . "#e22928")
          (yellow     . "#e24756")
          (blue       . "#2c3fff")
          (magenta    . "#2435db")
          (cyan       . "#3256ff")
          (white      . "#fffef6")
          (br-black   . "#505354")
          (br-red     . "#ff0325")
          (br-green   . "#ff3338")
          (br-yellow  . "#fe3a35")
          (br-blue    . "#1d50ff")
          (br-magenta . "#747cff")
          (br-cyan    . "#6184ff")
          (br-white   . "#fffff9")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key spiderman-colors)) 'unspecified))))

  (custom-theme-set-faces
   'spiderman

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

(provide-theme 'spiderman)
