(deftheme catppuccinfrappe
  "catppuccinfrappe-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (catppuccinfrappe-colors
        '(
          (bg         . "#303446")
          (fg         . "#c6d0f5")
          (cursor     . "#f2d5cf")
          (cursor-txt . "#c6d0f5")
          (selection  . "#626880")
          (selection-fg . "#c6d0f5")
          (black      . "#51576d")
          (red        . "#e78284")
          (green      . "#a6d189")
          (yellow     . "#e5c890")
          (blue       . "#8caaee")
          (magenta    . "#f4b8e4")
          (cyan       . "#81c8be")
          (white      . "#a5adce")
          (br-black   . "#626880")
          (br-red     . "#e67172")
          (br-green   . "#8ec772")
          (br-yellow  . "#d9ba73")
          (br-blue    . "#7b9ef0")
          (br-magenta . "#f2a4db")
          (br-cyan    . "#5abfb5")
          (br-white   . "#b5bfe2")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key catppuccinfrappe-colors)) 'unspecified))))

  (custom-theme-set-faces
   'catppuccinfrappe

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

(provide-theme 'catppuccinfrappe)
