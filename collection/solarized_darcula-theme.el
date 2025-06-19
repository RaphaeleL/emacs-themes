(deftheme solarized_darcula
  "solarized_darcula-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (solarized_darcula-colors
        '(
          (bg         . "#3d3f41")
          (fg         . "#d2d8d9")
          (cursor     . "#708284")
          (cursor-txt . "#002831")
          (selection  . "#214283")
          (selection-fg . "#d2d8d9")
          (black      . "#25292a")
          (red        . "#f24840")
          (green      . "#629655")
          (yellow     . "#b68800")
          (blue       . "#2075c7")
          (magenta    . "#797fd4")
          (cyan       . "#15968d")
          (white      . "#d2d8d9")
          (br-black   . "#25292a")
          (br-red     . "#f24840")
          (br-green   . "#629655")
          (br-yellow  . "#b68800")
          (br-blue    . "#2075c7")
          (br-magenta . "#797fd4")
          (br-cyan    . "#15968d")
          (br-white   . "#d2d8d9")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key solarized_darcula-colors)) 'unspecified))))

  (custom-theme-set-faces
   'solarized_darcula

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

(provide-theme 'solarized_darcula)
