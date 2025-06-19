(deftheme hardcore
  "hardcore-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (hardcore-colors
        '(
          (bg         . "#121212")
          (fg         . "#a0a0a0")
          (cursor     . "#bbbbbb")
          (cursor-txt . "#ffffff")
          (selection  . "#453b39")
          (selection-fg . "#b6bbc0")
          (black      . "#1b1d1e")
          (red        . "#f92672")
          (green      . "#a6e22e")
          (yellow     . "#fd971f")
          (blue       . "#66d9ef")
          (magenta    . "#9e6ffe")
          (cyan       . "#5e7175")
          (white      . "#ccccc6")
          (br-black   . "#505354")
          (br-red     . "#ff669d")
          (br-green   . "#beed5f")
          (br-yellow  . "#e6db74")
          (br-blue    . "#66d9ef")
          (br-magenta . "#9e6ffe")
          (br-cyan    . "#a3babf")
          (br-white   . "#f8f8f2")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key hardcore-colors)) 'unspecified))))

  (custom-theme-set-faces
   'hardcore

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

(provide-theme 'hardcore)
