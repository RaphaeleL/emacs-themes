(deftheme firewatch
  "firewatch-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (firewatch-colors
        '(
          (bg         . "#1e2027")
          (fg         . "#9ba2b2")
          (cursor     . "#f6f7ec")
          (cursor-txt . "#c4c5b5")
          (selection  . "#2f363e")
          (selection-fg . "#7d8fa4")
          (black      . "#585f6d")
          (red        . "#d95360")
          (green      . "#5ab977")
          (yellow     . "#dfb563")
          (blue       . "#4d89c4")
          (magenta    . "#d55119")
          (cyan       . "#44a8b6")
          (white      . "#e6e5ff")
          (br-black   . "#585f6d")
          (br-red     . "#d95360")
          (br-green   . "#5ab977")
          (br-yellow  . "#dfb563")
          (br-blue    . "#4c89c5")
          (br-magenta . "#d55119")
          (br-cyan    . "#44a8b6")
          (br-white   . "#e6e5ff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key firewatch-colors)) 'unspecified))))

  (custom-theme-set-faces
   'firewatch

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

(provide-theme 'firewatch)
