(deftheme brogrammer
  "brogrammer-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (brogrammer-colors
        '(
          (bg         . "#131313")
          (fg         . "#d6dbe5")
          (cursor     . "#b9b9b9")
          (cursor-txt . "#101010")
          (selection  . "#1f1f1f")
          (selection-fg . "#d6dbe5")
          (black      . "#1f1f1f")
          (red        . "#f81118")
          (green      . "#2dc55e")
          (yellow     . "#ecba0f")
          (blue       . "#2a84d2")
          (magenta    . "#4e5ab7")
          (cyan       . "#1081d6")
          (white      . "#d6dbe5")
          (br-black   . "#d6dbe5")
          (br-red     . "#de352e")
          (br-green   . "#1dd361")
          (br-yellow  . "#f3bd09")
          (br-blue    . "#1081d6")
          (br-magenta . "#5350b9")
          (br-cyan    . "#0f7ddb")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key brogrammer-colors)) 'unspecified))))

  (custom-theme-set-faces
   'brogrammer

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

(provide-theme 'brogrammer)
