(deftheme oceanicnext
  "oceanicnext-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (oceanicnext-colors
        '(
          (bg         . "#1b2b34")
          (fg         . "#c1c5cd")
          (cursor     . "#c1c5cd")
          (cursor-txt . "#1e2b33")
          (selection  . "#515b65")
          (selection-fg . "#c1c5cd")
          (black      . "#1b2b34")
          (red        . "#db686b")
          (green      . "#a2c699")
          (yellow     . "#f2ca73")
          (blue       . "#7198c8")
          (magenta    . "#bd96c2")
          (cyan       . "#74b1b2")
          (white      . "#ffffff")
          (br-black   . "#68737d")
          (br-red     . "#db686b")
          (br-green   . "#a2c699")
          (br-yellow  . "#f2ca73")
          (br-blue    . "#7198c8")
          (br-magenta . "#bd96c2")
          (br-cyan    . "#74b1b2")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key oceanicnext-colors)) 'unspecified))))

  (custom-theme-set-faces
   'oceanicnext

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

(provide-theme 'oceanicnext)
