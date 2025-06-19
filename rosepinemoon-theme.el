(deftheme rosepinemoon
  "rosepinemoon-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (rosepinemoon-colors
        '(
          (bg         . "#232136")
          (fg         . "#e0def4")
          (cursor     . "#e0def4")
          (cursor-txt . "#232136")
          (selection  . "#44415a")
          (selection-fg . "#e0def4")
          (black      . "#393552")
          (red        . "#eb6f92")
          (green      . "#3e8fb0")
          (yellow     . "#f6c177")
          (blue       . "#9ccfd8")
          (magenta    . "#c4a7e7")
          (cyan       . "#ea9a97")
          (white      . "#e0def4")
          (br-black   . "#6e6a86")
          (br-red     . "#eb6f92")
          (br-green   . "#3e8fb0")
          (br-yellow  . "#f6c177")
          (br-blue    . "#9ccfd8")
          (br-magenta . "#c4a7e7")
          (br-cyan    . "#ea9a97")
          (br-white   . "#e0def4")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key rosepinemoon-colors)) 'unspecified))))

  (custom-theme-set-faces
   'rosepinemoon

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

(provide-theme 'rosepinemoon)
