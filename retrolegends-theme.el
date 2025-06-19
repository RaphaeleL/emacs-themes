(deftheme retrolegends
  "retrolegends-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (retrolegends-colors
        '(
          (bg         . "#0d0d0d")
          (fg         . "#45eb45")
          (cursor     . "#45eb45")
          (cursor-txt . "#0d0d0d")
          (selection  . "#336633")
          (selection-fg . "#f2fff2")
          (black      . "#262626")
          (red        . "#de5454")
          (green      . "#45eb45")
          (yellow     . "#f7bf2b")
          (blue       . "#4066f2")
          (magenta    . "#bf4cf2")
          (cyan       . "#40d9e6")
          (white      . "#bfe6bf")
          (br-black   . "#4c594c")
          (br-red     . "#ff6666")
          (br-green   . "#59ff59")
          (br-yellow  . "#ffd933")
          (br-blue    . "#4c80ff")
          (br-magenta . "#e666ff")
          (br-cyan    . "#59e6ff")
          (br-white   . "#f2fff2")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key retrolegends-colors)) 'unspecified))))

  (custom-theme-set-faces
   'retrolegends

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

(provide-theme 'retrolegends)
