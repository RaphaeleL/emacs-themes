(deftheme nightfox
  "nightfox-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (nightfox-colors
        '(
          (bg         . "#192330")
          (fg         . "#cdcecf")
          (cursor     . "#cdcecf")
          (cursor-txt . "#192330")
          (selection  . "#2b3b51")
          (selection-fg . "#cdcecf")
          (black      . "#393b44")
          (red        . "#c94f6d")
          (green      . "#81b29a")
          (yellow     . "#dbc074")
          (blue       . "#719cd6")
          (magenta    . "#9d79d6")
          (cyan       . "#63cdcf")
          (white      . "#dfdfe0")
          (br-black   . "#575860")
          (br-red     . "#d16983")
          (br-green   . "#8ebaa4")
          (br-yellow  . "#e0c989")
          (br-blue    . "#86abdc")
          (br-magenta . "#baa1e2")
          (br-cyan    . "#7ad5d6")
          (br-white   . "#e4e4e5")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key nightfox-colors)) 'unspecified))))

  (custom-theme-set-faces
   'nightfox

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

(provide-theme 'nightfox)
