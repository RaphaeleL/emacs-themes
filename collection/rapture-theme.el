(deftheme rapture
  "rapture-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (rapture-colors
        '(
          (bg         . "#111e2a")
          (fg         . "#c0c9e5")
          (cursor     . "#ffffff")
          (cursor-txt . "#111e2a")
          (selection  . "#304b66")
          (selection-fg . "#ffffff")
          (black      . "#000000")
          (red        . "#fc644d")
          (green      . "#7afde1")
          (yellow     . "#fff09b")
          (blue       . "#6c9bf5")
          (magenta    . "#ff4fa1")
          (cyan       . "#64e0ff")
          (white      . "#c0c9e5")
          (br-black   . "#304b66")
          (br-red     . "#fc644d")
          (br-green   . "#7afde1")
          (br-yellow  . "#fff09b")
          (br-blue    . "#6c9bf5")
          (br-magenta . "#ff4fa1")
          (br-cyan    . "#64e0ff")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key rapture-colors)) 'unspecified))))

  (custom-theme-set-faces
   'rapture

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

(provide-theme 'rapture)
