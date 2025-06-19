(deftheme monalisa
  "monalisa-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (monalisa-colors
        '(
          (bg         . "#120b0d")
          (fg         . "#f7d66a")
          (cursor     . "#c46c32")
          (cursor-txt . "#120b0d")
          (selection  . "#f7d66a")
          (selection-fg . "#120b0d")
          (black      . "#351b0e")
          (red        . "#9b291c")
          (green      . "#636232")
          (yellow     . "#c36e28")
          (blue       . "#515c5d")
          (magenta    . "#9b1d29")
          (cyan       . "#588056")
          (white      . "#f7d75c")
          (br-black   . "#874228")
          (br-red     . "#ff4331")
          (br-green   . "#b4b264")
          (br-yellow  . "#ff9566")
          (br-blue    . "#9eb2b4")
          (br-magenta . "#ff5b6a")
          (br-cyan    . "#8acd8f")
          (br-white   . "#ffe598")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key monalisa-colors)) 'unspecified))))

  (custom-theme-set-faces
   'monalisa

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

(provide-theme 'monalisa)
