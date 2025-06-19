(deftheme konsolas
  "konsolas-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (konsolas-colors
        '(
          (bg         . "#060606")
          (fg         . "#c8c1c1")
          (cursor     . "#c8c1c1")
          (cursor-txt . "#060606")
          (selection  . "#060606")
          (selection-fg . "#c8c1c1")
          (black      . "#000000")
          (red        . "#aa1717")
          (green      . "#18b218")
          (yellow     . "#ebae1f")
          (blue       . "#2323a5")
          (magenta    . "#ad1edc")
          (cyan       . "#42b0c8")
          (white      . "#c8c1c1")
          (br-black   . "#7b716e")
          (br-red     . "#ff4141")
          (br-green   . "#5fff5f")
          (br-yellow  . "#ffff55")
          (br-blue    . "#4b4bff")
          (br-magenta . "#ff54ff")
          (br-cyan    . "#69ffff")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key konsolas-colors)) 'unspecified))))

  (custom-theme-set-faces
   'konsolas

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

(provide-theme 'konsolas)
