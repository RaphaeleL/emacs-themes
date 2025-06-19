(deftheme chalk
  "chalk-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (chalk-colors
        '(
          (bg         . "#2b2d2e")
          (fg         . "#d2d8d9")
          (cursor     . "#708284")
          (cursor-txt . "#002831")
          (selection  . "#e4e8ed")
          (selection-fg . "#3f4041")
          (black      . "#7d8b8f")
          (red        . "#b23a52")
          (green      . "#789b6a")
          (yellow     . "#b9ac4a")
          (blue       . "#2a7fac")
          (magenta    . "#bd4f5a")
          (cyan       . "#44a799")
          (white      . "#d2d8d9")
          (br-black   . "#888888")
          (br-red     . "#f24840")
          (br-green   . "#80c470")
          (br-yellow  . "#ffeb62")
          (br-blue    . "#4196ff")
          (br-magenta . "#fc5275")
          (br-cyan    . "#53cdbd")
          (br-white   . "#d2d8d9")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key chalk-colors)) 'unspecified))))

  (custom-theme-set-faces
   'chalk

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

(provide-theme 'chalk)
