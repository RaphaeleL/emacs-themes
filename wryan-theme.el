(deftheme wryan
  "wryan-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (wryan-colors
        '(
          (bg         . "#101010")
          (fg         . "#999993")
          (cursor     . "#9e9ecb")
          (cursor-txt . "#000000")
          (selection  . "#4d4d4d")
          (selection-fg . "#ffffff")
          (black      . "#333333")
          (red        . "#8c4665")
          (green      . "#287373")
          (yellow     . "#7c7c99")
          (blue       . "#395573")
          (magenta    . "#5e468c")
          (cyan       . "#31658c")
          (white      . "#899ca1")
          (br-black   . "#3d3d3d")
          (br-red     . "#bf4d80")
          (br-green   . "#53a6a6")
          (br-yellow  . "#9e9ecb")
          (br-blue    . "#477ab3")
          (br-magenta . "#7e62b3")
          (br-cyan    . "#6096bf")
          (br-white   . "#c0c0c0")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key wryan-colors)) 'unspecified))))

  (custom-theme-set-faces
   'wryan

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

(provide-theme 'wryan)
