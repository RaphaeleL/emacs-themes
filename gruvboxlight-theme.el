(deftheme gruvboxlight
  "gruvboxlight-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (gruvboxlight-colors
        '(
          (bg         . "#fbf1c7")
          (fg         . "#282828")
          (cursor     . "#282828")
          (cursor-txt . "#fbf1c7")
          (selection  . "#d5c4a1")
          (selection-fg . "#665c54")
          (black      . "#fbf1c7")
          (red        . "#9d0006")
          (green      . "#79740e")
          (yellow     . "#b57614")
          (blue       . "#076678")
          (magenta    . "#8f3f71")
          (cyan       . "#427b58")
          (white      . "#3c3836")
          (br-black   . "#9d8374")
          (br-red     . "#cc241d")
          (br-green   . "#98971a")
          (br-yellow  . "#d79921")
          (br-blue    . "#458588")
          (br-magenta . "#b16186")
          (br-cyan    . "#689d69")
          (br-white   . "#7c6f64")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key gruvboxlight-colors)) 'unspecified))))

  (custom-theme-set-faces
   'gruvboxlight

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

(provide-theme 'gruvboxlight)
