(deftheme arthur
  "arthur-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (arthur-colors
        '(
          (bg         . "#1c1c1c")
          (fg         . "#ddeedd")
          (cursor     . "#e2bbef")
          (cursor-txt . "#000000")
          (selection  . "#4d4d4d")
          (selection-fg . "#ffffff")
          (black      . "#3d352a")
          (red        . "#cd5c5c")
          (green      . "#86af80")
          (yellow     . "#e8ae5b")
          (blue       . "#6495ed")
          (magenta    . "#deb887")
          (cyan       . "#b0c4de")
          (white      . "#bbaa99")
          (br-black   . "#554444")
          (br-red     . "#cc5533")
          (br-green   . "#88aa22")
          (br-yellow  . "#ffa75d")
          (br-blue    . "#87ceeb")
          (br-magenta . "#996600")
          (br-cyan    . "#b0c4de")
          (br-white   . "#ddccbb")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key arthur-colors)) 'unspecified))))

  (custom-theme-set-faces
   'arthur

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

(provide-theme 'arthur)
