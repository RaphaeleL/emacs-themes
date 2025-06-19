(deftheme solarizedosakanight
  "solarizedosakanight-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (solarizedosakanight-colors
        '(
          (bg         . "#1a1b25")
          (fg         . "#c2caf1")
          (cursor     . "#c2caf1")
          (cursor-txt . "#1a1b25")
          (selection  . "#2a3454")
          (selection-fg . "#c2caf1")
          (black      . "#15161d")
          (red        . "#e77d8f")
          (green      . "#a8cd76")
          (yellow     . "#d8b172")
          (blue       . "#82a1f1")
          (magenta    . "#b69bf1")
          (cyan       . "#90cdfa")
          (white      . "#aab1d3")
          (br-black   . "#424866")
          (br-red     . "#e77d8f")
          (br-green   . "#a8cd76")
          (br-yellow  . "#d8b172")
          (br-blue    . "#82a1f1")
          (br-magenta . "#b69bf1")
          (br-cyan    . "#90cdfa")
          (br-white   . "#c2caf1")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key solarizedosakanight-colors)) 'unspecified))))

  (custom-theme-set-faces
   'solarizedosakanight

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

(provide-theme 'solarizedosakanight)
