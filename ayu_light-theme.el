(deftheme ayu_light
  "ayu_light-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (ayu_light-colors
        '(
          (bg         . "#fafafa")
          (fg         . "#5c6773")
          (cursor     . "#ff6a00")
          (cursor-txt . "#5c6773")
          (selection  . "#f0eee4")
          (selection-fg . "#5c6773")
          (black      . "#000000")
          (red        . "#ff3333")
          (green      . "#86b300")
          (yellow     . "#f29718")
          (blue       . "#41a6d9")
          (magenta    . "#f07178")
          (cyan       . "#4dbf99")
          (white      . "#ffffff")
          (br-black   . "#323232")
          (br-red     . "#ff6565")
          (br-green   . "#b8e532")
          (br-yellow  . "#ffc94a")
          (br-blue    . "#73d8ff")
          (br-magenta . "#ffa3aa")
          (br-cyan    . "#7ff1cb")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key ayu_light-colors)) 'unspecified))))

  (custom-theme-set-faces
   'ayu_light

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

(provide-theme 'ayu_light)
