(deftheme kanagawa_dragon
  "kanagawa_dragon-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (kanagawa_dragon-colors
        '(
          (bg         . "#181616")
          (fg         . "#c8c093")
          (cursor     . "#c5c9c5")
          (cursor-txt . "#1d202f")
          (selection  . "#223249")
          (selection-fg . "#c5c9c5")
          (black      . "#0d0c0c")
          (red        . "#c4746e")
          (green      . "#8a9a7b")
          (yellow     . "#c4b28a")
          (blue       . "#8ba4b0")
          (magenta    . "#a292a3")
          (cyan       . "#8ea4a2")
          (white      . "#c8c093")
          (br-black   . "#a6a69c")
          (br-red     . "#e46876")
          (br-green   . "#87a987")
          (br-yellow  . "#e6c384")
          (br-blue    . "#7fb4ca")
          (br-magenta . "#938aa9")
          (br-cyan    . "#7aa89f")
          (br-white   . "#c5c9c5")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key kanagawa_dragon-colors)) 'unspecified))))

  (custom-theme-set-faces
   'kanagawa_dragon

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

(provide-theme 'kanagawa_dragon)
