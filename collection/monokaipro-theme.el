(deftheme monokaipro
  "monokaipro-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (monokaipro-colors
        '(
          (bg         . "#2d2a2e")
          (fg         . "#fcfcfa")
          (cursor     . "#c1c0c0")
          (cursor-txt . "#c1c0c0")
          (selection  . "#5b595c")
          (selection-fg . "#fcfcfa")
          (black      . "#2d2a2e")
          (red        . "#ff6188")
          (green      . "#a9dc76")
          (yellow     . "#ffd866")
          (blue       . "#fc9867")
          (magenta    . "#ab9df2")
          (cyan       . "#78dce8")
          (white      . "#fcfcfa")
          (br-black   . "#727072")
          (br-red     . "#ff6188")
          (br-green   . "#a9dc76")
          (br-yellow  . "#ffd866")
          (br-blue    . "#fc9867")
          (br-magenta . "#ab9df2")
          (br-cyan    . "#78dce8")
          (br-white   . "#fcfcfa")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key monokaipro-colors)) 'unspecified))))

  (custom-theme-set-faces
   'monokaipro

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

(provide-theme 'monokaipro)
