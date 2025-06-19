(deftheme afterglow
  "afterglow-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (afterglow-colors
        '(
          (bg         . "#212121")
          (fg         . "#d0d0d0")
          (cursor     . "#d0d0d0")
          (cursor-txt . "#151515")
          (selection  . "#303030")
          (selection-fg . "#d0d0d0")
          (black      . "#151515")
          (red        . "#ac4142")
          (green      . "#7e8e50")
          (yellow     . "#e5b567")
          (blue       . "#6c99bb")
          (magenta    . "#9f4e85")
          (cyan       . "#7dd6cf")
          (white      . "#d0d0d0")
          (br-black   . "#505050")
          (br-red     . "#ac4142")
          (br-green   . "#7e8e50")
          (br-yellow  . "#e5b567")
          (br-blue    . "#6c99bb")
          (br-magenta . "#9f4e85")
          (br-cyan    . "#7dd6cf")
          (br-white   . "#f5f5f5")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key afterglow-colors)) 'unspecified))))

  (custom-theme-set-faces
   'afterglow

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

(provide-theme 'afterglow)
