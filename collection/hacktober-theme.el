(deftheme hacktober
  "hacktober-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (hacktober-colors
        '(
          (bg         . "#141414")
          (fg         . "#c9c9c9")
          (cursor     . "#c9c9c9")
          (cursor-txt . "#141414")
          (selection  . "#141414")
          (selection-fg . "#c9c9c9")
          (black      . "#191918")
          (red        . "#b34538")
          (green      . "#587744")
          (yellow     . "#d08949")
          (blue       . "#206ec5")
          (magenta    . "#864651")
          (cyan       . "#ac9166")
          (white      . "#f1eee7")
          (br-black   . "#2c2b2a")
          (br-red     . "#b33323")
          (br-green   . "#42824a")
          (br-yellow  . "#c75a22")
          (br-blue    . "#5389c5")
          (br-magenta . "#e795a5")
          (br-cyan    . "#ebc587")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key hacktober-colors)) 'unspecified))))

  (custom-theme-set-faces
   'hacktober

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

(provide-theme 'hacktober)
