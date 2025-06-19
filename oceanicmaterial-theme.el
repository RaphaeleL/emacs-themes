(deftheme oceanicmaterial
  "oceanicmaterial-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (oceanicmaterial-colors
        '(
          (bg         . "#1c262b")
          (fg         . "#c2c8d7")
          (cursor     . "#b3b8c3")
          (cursor-txt . "#ffffff")
          (selection  . "#6dc2b8")
          (selection-fg . "#c2c8d7")
          (black      . "#000000")
          (red        . "#ee2b2a")
          (green      . "#40a33f")
          (yellow     . "#ffea2e")
          (blue       . "#1e80f0")
          (magenta    . "#8800a0")
          (cyan       . "#16afca")
          (white      . "#a4a4a4")
          (br-black   . "#777777")
          (br-red     . "#dc5c60")
          (br-green   . "#70be71")
          (br-yellow  . "#fff163")
          (br-blue    . "#54a4f3")
          (br-magenta . "#aa4dbc")
          (br-cyan    . "#42c7da")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key oceanicmaterial-colors)) 'unspecified))))

  (custom-theme-set-faces
   'oceanicmaterial

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

(provide-theme 'oceanicmaterial)
