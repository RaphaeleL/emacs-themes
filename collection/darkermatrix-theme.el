(deftheme darkermatrix
  "darkermatrix-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (darkermatrix-colors
        '(
          (bg         . "#070c0e")
          (fg         . "#28380d")
          (cursor     . "#373a26")
          (cursor-txt . "#00ff87")
          (selection  . "#0f191c")
          (selection-fg . "#00ff87")
          (black      . "#091013")
          (red        . "#002e18")
          (green      . "#6fa64c")
          (yellow     . "#595900")
          (blue       . "#00cb6b")
          (magenta    . "#412a4d")
          (cyan       . "#125459")
          (white      . "#002e19")
          (br-black   . "#333333")
          (br-red     . "#00381d")
          (br-green   . "#90d762")
          (br-yellow  . "#e2e500")
          (br-blue    . "#00ff87")
          (br-magenta . "#412a4d")
          (br-cyan    . "#176c73")
          (br-white   . "#00381e")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key darkermatrix-colors)) 'unspecified))))

  (custom-theme-set-faces
   'darkermatrix

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

(provide-theme 'darkermatrix)
