(deftheme molokai
  "molokai-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (molokai-colors
        '(
          (bg         . "#121212")
          (fg         . "#bbbbbb")
          (cursor     . "#bbbbbb")
          (cursor-txt . "#ffffff")
          (selection  . "#b5d5ff")
          (selection-fg . "#000000")
          (black      . "#121212")
          (red        . "#fa2573")
          (green      . "#98e123")
          (yellow     . "#dfd460")
          (blue       . "#1080d0")
          (magenta    . "#8700ff")
          (cyan       . "#43a8d0")
          (white      . "#bbbbbb")
          (br-black   . "#555555")
          (br-red     . "#f6669d")
          (br-green   . "#b1e05f")
          (br-yellow  . "#fff26d")
          (br-blue    . "#00afff")
          (br-magenta . "#af87ff")
          (br-cyan    . "#51ceff")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key molokai-colors)) 'unspecified))))

  (custom-theme-set-faces
   'molokai

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

(provide-theme 'molokai)
