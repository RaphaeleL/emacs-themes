(deftheme the_hulk
  "the_hulk-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (the_hulk-colors
        '(
          (bg         . "#1b1d1e")
          (fg         . "#b5b5b5")
          (cursor     . "#16b61b")
          (cursor-txt . "#000000")
          (selection  . "#4d504c")
          (selection-fg . "#0b6309")
          (black      . "#1b1d1e")
          (red        . "#269d1b")
          (green      . "#13ce30")
          (yellow     . "#63e457")
          (blue       . "#2525f5")
          (magenta    . "#641f74")
          (cyan       . "#378ca9")
          (white      . "#d9d8d1")
          (br-black   . "#505354")
          (br-red     . "#8dff2a")
          (br-green   . "#48ff77")
          (br-yellow  . "#3afe16")
          (br-blue    . "#506b95")
          (br-magenta . "#72589d")
          (br-cyan    . "#4085a6")
          (br-white   . "#e5e6e1")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key the_hulk-colors)) 'unspecified))))

  (custom-theme-set-faces
   'the_hulk

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

(provide-theme 'the_hulk)
