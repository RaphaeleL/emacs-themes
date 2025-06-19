(deftheme miasma
  "miasma-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (miasma-colors
        '(
          (bg         . "#222222")
          (fg         . "#c2c2b0")
          (cursor     . "#c7c7c7")
          (cursor-txt . "#eeeeee")
          (selection  . "#e5c47b")
          (selection-fg . "#000000")
          (black      . "#000000")
          (red        . "#685742")
          (green      . "#5f875f")
          (yellow     . "#b36d43")
          (blue       . "#78824b")
          (magenta    . "#bb7744")
          (cyan       . "#c9a554")
          (white      . "#d7c483")
          (br-black   . "#666666")
          (br-red     . "#685742")
          (br-green   . "#5f875f")
          (br-yellow  . "#b36d43")
          (br-blue    . "#78824b")
          (br-magenta . "#bb7744")
          (br-cyan    . "#c9a554")
          (br-white   . "#d7c483")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key miasma-colors)) 'unspecified))))

  (custom-theme-set-faces
   'miasma

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

(provide-theme 'miasma)
