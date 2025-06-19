(deftheme tinacious_design_dark
  "tinacious_design_dark-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (tinacious_design_dark-colors
        '(
          (bg         . "#1d1d26")
          (fg         . "#cbcbf0")
          (cursor     . "#cbcbf0")
          (cursor-txt . "#ffffff")
          (selection  . "#ff3399")
          (selection-fg . "#ffffff")
          (black      . "#1d1d26")
          (red        . "#ff3399")
          (green      . "#00d364")
          (yellow     . "#ffcc66")
          (blue       . "#00cbff")
          (magenta    . "#cc66ff")
          (cyan       . "#00ceca")
          (white      . "#cbcbf0")
          (br-black   . "#636667")
          (br-red     . "#ff2f92")
          (br-green   . "#00d364")
          (br-yellow  . "#ffd479")
          (br-blue    . "#00cbff")
          (br-magenta . "#d783ff")
          (br-cyan    . "#00d5d4")
          (br-white   . "#d5d6f3")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key tinacious_design_dark-colors)) 'unspecified))))

  (custom-theme-set-faces
   'tinacious_design_dark

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

(provide-theme 'tinacious_design_dark)
