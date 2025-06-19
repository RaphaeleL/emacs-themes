(deftheme royal
  "royal-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (royal-colors
        '(
          (bg         . "#100815")
          (fg         . "#514968")
          (cursor     . "#524966")
          (cursor-txt . "#100613")
          (selection  . "#1f1d2b")
          (selection-fg . "#a593cd")
          (black      . "#241f2b")
          (red        . "#91284c")
          (green      . "#23801c")
          (yellow     . "#b49d27")
          (blue       . "#6580b0")
          (magenta    . "#674d96")
          (cyan       . "#8aaabe")
          (white      . "#524966")
          (br-black   . "#312d3d")
          (br-red     . "#d5356c")
          (br-green   . "#2cd946")
          (br-yellow  . "#fde83b")
          (br-blue    . "#90baf9")
          (br-magenta . "#a479e3")
          (br-cyan    . "#acd4eb")
          (br-white   . "#9e8cbd")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key royal-colors)) 'unspecified))))

  (custom-theme-set-faces
   'royal

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

(provide-theme 'royal)
