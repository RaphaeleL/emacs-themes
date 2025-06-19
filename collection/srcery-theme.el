(deftheme srcery
  "srcery-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (srcery-colors
        '(
          (bg         . "#1c1b19")
          (fg         . "#fce8c3")
          (cursor     . "#fbb829")
          (cursor-txt . "#1c1b19")
          (selection  . "#fce8c3")
          (selection-fg . "#1c1b19")
          (black      . "#1c1b19")
          (red        . "#ef2f27")
          (green      . "#519f50")
          (yellow     . "#fbb829")
          (blue       . "#2c78bf")
          (magenta    . "#e02c6d")
          (cyan       . "#0aaeb3")
          (white      . "#baa67f")
          (br-black   . "#918175")
          (br-red     . "#f75341")
          (br-green   . "#98bc37")
          (br-yellow  . "#fed06e")
          (br-blue    . "#68a8e4")
          (br-magenta . "#ff5c8f")
          (br-cyan    . "#2be4d0")
          (br-white   . "#fce8c3")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key srcery-colors)) 'unspecified))))

  (custom-theme-set-faces
   'srcery

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

(provide-theme 'srcery)
