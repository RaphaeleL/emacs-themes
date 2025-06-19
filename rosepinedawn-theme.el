(deftheme rosepinedawn
  "rosepinedawn-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (rosepinedawn-colors
        '(
          (bg         . "#faf4ed")
          (fg         . "#575279")
          (cursor     . "#575279")
          (cursor-txt . "#faf4ed")
          (selection  . "#dfdad9")
          (selection-fg . "#575279")
          (black      . "#f2e9e1")
          (red        . "#b4637a")
          (green      . "#286983")
          (yellow     . "#ea9d34")
          (blue       . "#56949f")
          (magenta    . "#907aa9")
          (cyan       . "#d7827e")
          (white      . "#575279")
          (br-black   . "#9893a5")
          (br-red     . "#b4637a")
          (br-green   . "#286983")
          (br-yellow  . "#ea9d34")
          (br-blue    . "#56949f")
          (br-magenta . "#907aa9")
          (br-cyan    . "#d7827e")
          (br-white   . "#575279")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key rosepinedawn-colors)) 'unspecified))))

  (custom-theme-set-faces
   'rosepinedawn

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

(provide-theme 'rosepinedawn)
