(deftheme tokyonightday
  "tokyonightday-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (tokyonightday-colors
        '(
          (bg         . "#e1e2e7")
          (fg         . "#3760bf")
          (cursor     . "#3760bf")
          (cursor-txt . "#e1e2e7")
          (selection  . "#99a7df")
          (selection-fg . "#3760bf")
          (black      . "#e9e9ed")
          (red        . "#f52a65")
          (green      . "#587539")
          (yellow     . "#8c6c3e")
          (blue       . "#2e7de9")
          (magenta    . "#9854f1")
          (cyan       . "#007197")
          (white      . "#6172b0")
          (br-black   . "#a1a6c5")
          (br-red     . "#f52a65")
          (br-green   . "#587539")
          (br-yellow  . "#8c6c3e")
          (br-blue    . "#2e7de9")
          (br-magenta . "#9854f1")
          (br-cyan    . "#007197")
          (br-white   . "#3760bf")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key tokyonightday-colors)) 'unspecified))))

  (custom-theme-set-faces
   'tokyonightday

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

(provide-theme 'tokyonightday)
