(deftheme kolorit
  "kolorit-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (kolorit-colors
        '(
          (bg         . "#1d1a1e")
          (fg         . "#efecec")
          (cursor     . "#c7c7c7")
          (cursor-txt . "#ffffff")
          (selection  . "#e1925c")
          (selection-fg . "#1d1a1e")
          (black      . "#1d1a1e")
          (red        . "#ff5b82")
          (green      . "#47d7a1")
          (yellow     . "#e8e562")
          (blue       . "#5db4ee")
          (magenta    . "#da6cda")
          (cyan       . "#57e9eb")
          (white      . "#ededed")
          (br-black   . "#1d1a1e")
          (br-red     . "#ff5b82")
          (br-green   . "#47d7a1")
          (br-yellow  . "#e8e562")
          (br-blue    . "#5db4ee")
          (br-magenta . "#da6cda")
          (br-cyan    . "#57e9eb")
          (br-white   . "#ededed")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key kolorit-colors)) 'unspecified))))

  (custom-theme-set-faces
   'kolorit

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

(provide-theme 'kolorit)
