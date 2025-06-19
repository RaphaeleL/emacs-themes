(deftheme gitlablight
  "gitlablight-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (gitlablight-colors
        '(
          (bg         . "#fafaff")
          (fg         . "#303030")
          (cursor     . "#303030")
          (cursor-txt . "#303030")
          (selection  . "#ad95e9")
          (selection-fg . "#fafaff")
          (black      . "#303030")
          (red        . "#a31700")
          (green      . "#0a7f3d")
          (yellow     . "#af551d")
          (blue       . "#006cd8")
          (magenta    . "#583cac")
          (cyan       . "#00798a")
          (white      . "#303030")
          (br-black   . "#303030")
          (br-red     . "#a31700")
          (br-green   . "#0a7f3d")
          (br-yellow  . "#af551d")
          (br-blue    . "#006cd8")
          (br-magenta . "#583cac")
          (br-cyan    . "#00798a")
          (br-white   . "#303030")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key gitlablight-colors)) 'unspecified))))

  (custom-theme-set-faces
   'gitlablight

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

(provide-theme 'gitlablight)
