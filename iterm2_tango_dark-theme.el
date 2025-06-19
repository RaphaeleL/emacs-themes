(deftheme iterm2_tango_dark
  "iterm2_tango_dark-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (iterm2_tango_dark-colors
        '(
          (bg         . "#000000")
          (fg         . "#ffffff")
          (cursor     . "#ffffff")
          (cursor-txt . "#000000")
          (selection  . "#c1deff")
          (selection-fg . "#000000")
          (black      . "#000000")
          (red        . "#d81e00")
          (green      . "#5ea702")
          (yellow     . "#cfae00")
          (blue       . "#427ab3")
          (magenta    . "#89658e")
          (cyan       . "#00a7aa")
          (white      . "#dbded8")
          (br-black   . "#686a66")
          (br-red     . "#f54235")
          (br-green   . "#99e343")
          (br-yellow  . "#fdeb61")
          (br-blue    . "#84b0d8")
          (br-magenta . "#bc94b7")
          (br-cyan    . "#37e6e8")
          (br-white   . "#f1f1f0")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key iterm2_tango_dark-colors)) 'unspecified))))

  (custom-theme-set-faces
   'iterm2_tango_dark

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

(provide-theme 'iterm2_tango_dark)
