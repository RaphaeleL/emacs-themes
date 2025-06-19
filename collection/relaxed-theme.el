(deftheme relaxed
  "relaxed-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (relaxed-colors
        '(
          (bg         . "#353a44")
          (fg         . "#d9d9d9")
          (cursor     . "#d9d9d9")
          (cursor-txt . "#1b1b1b")
          (selection  . "#6a7985")
          (selection-fg . "#d9d9d9")
          (black      . "#151515")
          (red        . "#bc5653")
          (green      . "#909d63")
          (yellow     . "#ebc17a")
          (blue       . "#6a8799")
          (magenta    . "#b06698")
          (cyan       . "#c9dfff")
          (white      . "#d9d9d9")
          (br-black   . "#636363")
          (br-red     . "#bc5653")
          (br-green   . "#a0ac77")
          (br-yellow  . "#ebc17a")
          (br-blue    . "#7eaac7")
          (br-magenta . "#b06698")
          (br-cyan    . "#acbbd0")
          (br-white   . "#f7f7f7")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key relaxed-colors)) 'unspecified))))

  (custom-theme-set-faces
   'relaxed

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

(provide-theme 'relaxed)
