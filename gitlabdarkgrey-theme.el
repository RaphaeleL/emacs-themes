(deftheme gitlabdarkgrey
  "gitlabdarkgrey-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (gitlabdarkgrey-colors
        '(
          (bg         . "#222222")
          (fg         . "#ffffff")
          (cursor     . "#ffffff")
          (cursor-txt . "#ffffff")
          (selection  . "#ad95e9")
          (selection-fg . "#222222")
          (black      . "#000000")
          (red        . "#f57f6c")
          (green      . "#52b87a")
          (yellow     . "#d99530")
          (blue       . "#7fb6ed")
          (magenta    . "#f88aaf")
          (cyan       . "#32c5d2")
          (white      . "#ffffff")
          (br-black   . "#666666")
          (br-red     . "#fcb5aa")
          (br-green   . "#91d4a8")
          (br-yellow  . "#e9be74")
          (br-blue    . "#498dd1")
          (br-magenta . "#fcacc5")
          (br-cyan    . "#5edee3")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key gitlabdarkgrey-colors)) 'unspecified))))

  (custom-theme-set-faces
   'gitlabdarkgrey

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

(provide-theme 'gitlabdarkgrey)
