(deftheme darkmatrix
  "darkmatrix-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (darkmatrix-colors
        '(
          (bg         . "#070c0e")
          (fg         . "#3e5715")
          (cursor     . "#9fa86e")
          (cursor-txt . "#00ff87")
          (selection  . "#0f191c")
          (selection-fg . "#00ff87")
          (black      . "#091013")
          (red        . "#006536")
          (green      . "#6fa64c")
          (yellow     . "#7e8000")
          (blue       . "#2c9a84")
          (magenta    . "#452d53")
          (cyan       . "#114d53")
          (white      . "#006536")
          (br-black   . "#333333")
          (br-red     . "#00733d")
          (br-green   . "#90d762")
          (br-yellow  . "#e2e500")
          (br-blue    . "#46d8b8")
          (br-magenta . "#4a3059")
          (br-cyan    . "#12545a")
          (br-white   . "#006536")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key darkmatrix-colors)) 'unspecified))))

  (custom-theme-set-faces
   'darkmatrix

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

(provide-theme 'darkmatrix)
