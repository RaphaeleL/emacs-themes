(deftheme kibble
  "kibble-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (kibble-colors
        '(
          (bg         . "#0e100a")
          (fg         . "#f7f7f7")
          (cursor     . "#9fda9c")
          (cursor-txt . "#000000")
          (selection  . "#9ba787")
          (selection-fg . "#000000")
          (black      . "#4d4d4d")
          (red        . "#c70031")
          (green      . "#29cf13")
          (yellow     . "#d8e30e")
          (blue       . "#3449d1")
          (magenta    . "#8400ff")
          (cyan       . "#0798ab")
          (white      . "#e2d1e3")
          (br-black   . "#5a5a5a")
          (br-red     . "#f01578")
          (br-green   . "#6ce05c")
          (br-yellow  . "#f3f79e")
          (br-blue    . "#97a4f7")
          (br-magenta . "#c495f0")
          (br-cyan    . "#68f2e0")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key kibble-colors)) 'unspecified))))

  (custom-theme-set-faces
   'kibble

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

(provide-theme 'kibble)
