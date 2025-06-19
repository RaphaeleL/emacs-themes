(deftheme lab_fox
  "lab_fox-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (lab_fox-colors
        '(
          (bg         . "#2e2e2e")
          (fg         . "#ffffff")
          (cursor     . "#7f7f7f")
          (cursor-txt . "#7f7f7f")
          (selection  . "#cb392e")
          (selection-fg . "#ffffff")
          (black      . "#2e2e2e")
          (red        . "#fc6d26")
          (green      . "#3eb383")
          (yellow     . "#fca121")
          (blue       . "#db3b21")
          (magenta    . "#380d75")
          (cyan       . "#6e49cb")
          (white      . "#ffffff")
          (br-black   . "#464646")
          (br-red     . "#ff6517")
          (br-green   . "#53eaa8")
          (br-yellow  . "#fca013")
          (br-blue    . "#db501f")
          (br-magenta . "#441090")
          (br-cyan    . "#7d53e7")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key lab_fox-colors)) 'unspecified))))

  (custom-theme-set-faces
   'lab_fox

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

(provide-theme 'lab_fox)
