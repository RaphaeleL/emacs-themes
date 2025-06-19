(deftheme farmhousedark
  "farmhousedark-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (farmhousedark-colors
        '(
          (bg         . "#1d2027")
          (fg         . "#e8e4e1")
          (cursor     . "#006efe")
          (cursor-txt . "#e8e4e1")
          (selection  . "#4d5658")
          (selection-fg . "#b3b1aa")
          (black      . "#1d2027")
          (red        . "#ba0004")
          (green      . "#549d00")
          (yellow     . "#c87300")
          (blue       . "#0049e6")
          (magenta    . "#9f1b61")
          (cyan       . "#1fb65c")
          (white      . "#e8e4e1")
          (br-black   . "#394047")
          (br-red     . "#eb0009")
          (br-green   . "#7ac100")
          (br-yellow  . "#ea9a00")
          (br-blue    . "#006efe")
          (br-magenta . "#bf3b7f")
          (br-cyan    . "#19e062")
          (br-white   . "#f4eef0")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key farmhousedark-colors)) 'unspecified))))

  (custom-theme-set-faces
   'farmhousedark

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

(provide-theme 'farmhousedark)
