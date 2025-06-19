(deftheme aardvark_blue
  "aardvark_blue-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (aardvark_blue-colors
        '(
          (bg         . "#102040")
          (fg         . "#dddddd")
          (cursor     . "#007acc")
          (cursor-txt . "#bfdbfe")
          (selection  . "#bfdbfe")
          (selection-fg . "#000000")
          (black      . "#191919")
          (red        . "#aa342e")
          (green      . "#4b8c0f")
          (yellow     . "#dbba00")
          (blue       . "#1370d3")
          (magenta    . "#c43ac3")
          (cyan       . "#008eb0")
          (white      . "#bebebe")
          (br-black   . "#454545")
          (br-red     . "#f05b50")
          (br-green   . "#95dc55")
          (br-yellow  . "#ffe763")
          (br-blue    . "#60a4ec")
          (br-magenta . "#e26be2")
          (br-cyan    . "#60b6cb")
          (br-white   . "#f7f7f7")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key aardvark_blue-colors)) 'unspecified))))

  (custom-theme-set-faces
   'aardvark_blue

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

(provide-theme 'aardvark_blue)
