(deftheme vaughn
  "vaughn-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (vaughn-colors
        '(
          (bg         . "#25234f")
          (fg         . "#dcdccc")
          (cursor     . "#ff5555")
          (cursor-txt . "#ffffff")
          (selection  . "#b5d5ff")
          (selection-fg . "#000000")
          (black      . "#25234f")
          (red        . "#705050")
          (green      . "#60b48a")
          (yellow     . "#dfaf8f")
          (blue       . "#5555ff")
          (magenta    . "#f08cc3")
          (cyan       . "#8cd0d3")
          (white      . "#709080")
          (br-black   . "#709080")
          (br-red     . "#dca3a3")
          (br-green   . "#60b48a")
          (br-yellow  . "#f0dfaf")
          (br-blue    . "#5555ff")
          (br-magenta . "#ec93d3")
          (br-cyan    . "#93e0e3")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key vaughn-colors)) 'unspecified))))

  (custom-theme-set-faces
   'vaughn

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

(provide-theme 'vaughn)
