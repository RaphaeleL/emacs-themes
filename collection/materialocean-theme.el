(deftheme materialocean
  "materialocean-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (materialocean-colors
        '(
          (bg         . "#0f111a")
          (fg         . "#8f93a2")
          (cursor     . "#ffcc00")
          (cursor-txt . "#0f111a")
          (selection  . "#1f2233")
          (selection-fg . "#8f93a2")
          (black      . "#546e7a")
          (red        . "#ff5370")
          (green      . "#c3e88d")
          (yellow     . "#ffcb6b")
          (blue       . "#82aaff")
          (magenta    . "#c792ea")
          (cyan       . "#89ddff")
          (white      . "#ffffff")
          (br-black   . "#546e7a")
          (br-red     . "#ff5370")
          (br-green   . "#c3e88d")
          (br-yellow  . "#ffcb6b")
          (br-blue    . "#82aaff")
          (br-magenta . "#c792ea")
          (br-cyan    . "#89ddff")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key materialocean-colors)) 'unspecified))))

  (custom-theme-set-faces
   'materialocean

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

(provide-theme 'materialocean)
