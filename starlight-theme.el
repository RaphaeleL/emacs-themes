(deftheme starlight
  "starlight-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (starlight-colors
        '(
          (bg         . "#242424")
          (fg         . "#ffffff")
          (cursor     . "#ffffff")
          (cursor-txt . "#242424")
          (selection  . "#ffffff")
          (selection-fg . "#242424")
          (black      . "#242424")
          (red        . "#e2425d")
          (green      . "#66b238")
          (yellow     . "#dec541")
          (blue       . "#54aad0")
          (magenta    . "#e8b2f8")
          (cyan       . "#5abf9b")
          (white      . "#e6e6e6")
          (br-black   . "#616161")
          (br-red     . "#ec5b58")
          (br-green   . "#6bd162")
          (br-yellow  . "#e9e85c")
          (br-blue    . "#78c3f3")
          (br-magenta . "#f2afee")
          (br-cyan    . "#6adcc5")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key starlight-colors)) 'unspecified))))

  (custom-theme-set-faces
   'starlight

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

(provide-theme 'starlight)
