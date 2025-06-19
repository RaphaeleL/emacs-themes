(deftheme tomorrow_night_burns
  "tomorrow_night_burns-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (tomorrow_night_burns-colors
        '(
          (bg         . "#151515")
          (fg         . "#a1b0b8")
          (cursor     . "#ff443e")
          (cursor-txt . "#708284")
          (selection  . "#b0bec5")
          (selection-fg . "#2a2d32")
          (black      . "#252525")
          (red        . "#832e31")
          (green      . "#a63c40")
          (yellow     . "#d3494e")
          (blue       . "#fc595f")
          (magenta    . "#df9395")
          (cyan       . "#ba8586")
          (white      . "#f5f5f5")
          (br-black   . "#5d6f71")
          (br-red     . "#832e31")
          (br-green   . "#a63c40")
          (br-yellow  . "#d2494e")
          (br-blue    . "#fc595f")
          (br-magenta . "#df9395")
          (br-cyan    . "#ba8586")
          (br-white   . "#f5f5f5")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key tomorrow_night_burns-colors)) 'unspecified))))

  (custom-theme-set-faces
   'tomorrow_night_burns

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

(provide-theme 'tomorrow_night_burns)
