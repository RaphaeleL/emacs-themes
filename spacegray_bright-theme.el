(deftheme spacegray_bright
  "spacegray_bright-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (spacegray_bright-colors
        '(
          (bg         . "#2a2e3a")
          (fg         . "#f3f3f3")
          (cursor     . "#c6c6c6")
          (cursor-txt . "#ffffff")
          (selection  . "#cacaca")
          (selection-fg . "#000000")
          (black      . "#080808")
          (red        . "#bc5553")
          (green      . "#a0b56c")
          (yellow     . "#f6c987")
          (blue       . "#7baec1")
          (magenta    . "#b98aae")
          (cyan       . "#85c9b8")
          (white      . "#d8d8d8")
          (br-black   . "#626262")
          (br-red     . "#bc5553")
          (br-green   . "#a0b56c")
          (br-yellow  . "#f6c987")
          (br-blue    . "#7baec1")
          (br-magenta . "#b98aae")
          (br-cyan    . "#85c9b8")
          (br-white   . "#f7f7f7")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key spacegray_bright-colors)) 'unspecified))))

  (custom-theme-set-faces
   'spacegray_bright

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

(provide-theme 'spacegray_bright)
