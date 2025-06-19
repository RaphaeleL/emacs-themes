(deftheme github
  "github-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (github-colors
        '(
          (bg         . "#f4f4f4")
          (fg         . "#3e3e3e")
          (cursor     . "#3f3f3f")
          (cursor-txt . "#f4f4f4")
          (selection  . "#a9c1e2")
          (selection-fg . "#535353")
          (black      . "#3e3e3e")
          (red        . "#970b16")
          (green      . "#07962a")
          (yellow     . "#f8eec7")
          (blue       . "#003e8a")
          (magenta    . "#e94691")
          (cyan       . "#89d1ec")
          (white      . "#ffffff")
          (br-black   . "#666666")
          (br-red     . "#de0000")
          (br-green   . "#87d5a2")
          (br-yellow  . "#f1d007")
          (br-blue    . "#2e6cba")
          (br-magenta . "#ffa29f")
          (br-cyan    . "#1cfafe")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key github-colors)) 'unspecified))))

  (custom-theme-set-faces
   'github

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

(provide-theme 'github)
