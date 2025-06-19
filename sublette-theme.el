(deftheme sublette
  "sublette-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (sublette-colors
        '(
          (bg         . "#202535")
          (fg         . "#ccced0")
          (cursor     . "#ccced0")
          (cursor-txt . "#202535")
          (selection  . "#ccced0")
          (selection-fg . "#202535")
          (black      . "#253045")
          (red        . "#ee5577")
          (green      . "#55ee77")
          (yellow     . "#ffdd88")
          (blue       . "#5588ff")
          (magenta    . "#ff77cc")
          (cyan       . "#44eeee")
          (white      . "#f5f5da")
          (br-black   . "#405570")
          (br-red     . "#ee6655")
          (br-green   . "#99ee77")
          (br-yellow  . "#ffff77")
          (br-blue    . "#77bbff")
          (br-magenta . "#aa88ff")
          (br-cyan    . "#55ffbb")
          (br-white   . "#ffffee")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key sublette-colors)) 'unspecified))))

  (custom-theme-set-faces
   'sublette

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

(provide-theme 'sublette)
