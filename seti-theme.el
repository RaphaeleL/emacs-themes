(deftheme seti
  "seti-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (seti-colors
        '(
          (bg         . "#111213")
          (fg         . "#cacecd")
          (cursor     . "#e3bf21")
          (cursor-txt . "#e0be2e")
          (selection  . "#303233")
          (selection-fg . "#cacecd")
          (black      . "#323232")
          (red        . "#c22832")
          (green      . "#8ec43d")
          (yellow     . "#e0c64f")
          (blue       . "#43a5d5")
          (magenta    . "#8b57b5")
          (cyan       . "#8ec43d")
          (white      . "#eeeeee")
          (br-black   . "#323232")
          (br-red     . "#c22832")
          (br-green   . "#8ec43d")
          (br-yellow  . "#e0c64f")
          (br-blue    . "#43a5d5")
          (br-magenta . "#8b57b5")
          (br-cyan    . "#8ec43d")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key seti-colors)) 'unspecified))))

  (custom-theme-set-faces
   'seti

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

(provide-theme 'seti)
