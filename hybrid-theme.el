(deftheme hybrid
  "hybrid-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (hybrid-colors
        '(
          (bg         . "#161719")
          (fg         . "#b7bcba")
          (cursor     . "#b7bcba")
          (cursor-txt . "#1e1f22")
          (selection  . "#1e1f22")
          (selection-fg . "#b7bcba")
          (black      . "#2a2e33")
          (red        . "#b84d51")
          (green      . "#b3bf5a")
          (yellow     . "#e4b55e")
          (blue       . "#6e90b0")
          (magenta    . "#a17eac")
          (cyan       . "#7fbfb4")
          (white      . "#b5b9b6")
          (br-black   . "#1d1f22")
          (br-red     . "#8d2e32")
          (br-green   . "#798431")
          (br-yellow  . "#e58a50")
          (br-blue    . "#4b6b88")
          (br-magenta . "#6e5079")
          (br-cyan    . "#4d7b74")
          (br-white   . "#5a626a")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key hybrid-colors)) 'unspecified))))

  (custom-theme-set-faces
   'hybrid

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

(provide-theme 'hybrid)
