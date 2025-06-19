(deftheme gruvboxmaterial
  "gruvboxmaterial-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (gruvboxmaterial-colors
        '(
          (bg         . "#1d2021")
          (fg         . "#d4be98")
          (cursor     . "#ffffff")
          (cursor-txt . "#000000")
          (selection  . "#2b2c3f")
          (selection-fg . "#7cfb70")
          (black      . "#141617")
          (red        . "#ea6926")
          (green      . "#c1d041")
          (yellow     . "#eecf75")
          (blue       . "#6da3ec")
          (magenta    . "#fd9bc1")
          (cyan       . "#fe9d6e")
          (white      . "#ffffff")
          (br-black   . "#000000")
          (br-red     . "#d3573b")
          (br-green   . "#c1d041")
          (br-yellow  . "#eecf75")
          (br-blue    . "#2c86ff")
          (br-magenta . "#fd9bc1")
          (br-cyan    . "#92a5df")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key gruvboxmaterial-colors)) 'unspecified))))

  (custom-theme-set-faces
   'gruvboxmaterial

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

(provide-theme 'gruvboxmaterial)
