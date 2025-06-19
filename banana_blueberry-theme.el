(deftheme banana_blueberry
  "banana_blueberry-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (banana_blueberry-colors
        '(
          (bg         . "#191323")
          (fg         . "#cccccc")
          (cursor     . "#e07d13")
          (cursor-txt . "#ffffff")
          (selection  . "#220525")
          (selection-fg . "#f4f4f4")
          (black      . "#17141f")
          (red        . "#ff6b7f")
          (green      . "#00bd9c")
          (yellow     . "#e6c62f")
          (blue       . "#22e8df")
          (magenta    . "#dc396a")
          (cyan       . "#56b6c2")
          (white      . "#f1f1f1")
          (br-black   . "#495162")
          (br-red     . "#fe9ea1")
          (br-green   . "#98c379")
          (br-yellow  . "#f9e46b")
          (br-blue    . "#91fff4")
          (br-magenta . "#da70d6")
          (br-cyan    . "#bcf3ff")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key banana_blueberry-colors)) 'unspecified))))

  (custom-theme-set-faces
   'banana_blueberry

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

(provide-theme 'banana_blueberry)
