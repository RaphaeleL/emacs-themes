(deftheme ayu_mirage
  "ayu_mirage-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (ayu_mirage-colors
        '(
          (bg         . "#1f2430")
          (fg         . "#cbccc6")
          (cursor     . "#ffcc66")
          (cursor-txt . "#1f2430")
          (selection  . "#33415e")
          (selection-fg . "#cbccc6")
          (black      . "#191e2a")
          (red        . "#ed8274")
          (green      . "#a6cc70")
          (yellow     . "#fad07b")
          (blue       . "#6dcbfa")
          (magenta    . "#cfbafa")
          (cyan       . "#90e1c6")
          (white      . "#c7c7c7")
          (br-black   . "#686868")
          (br-red     . "#f28779")
          (br-green   . "#bae67e")
          (br-yellow  . "#ffd580")
          (br-blue    . "#73d0ff")
          (br-magenta . "#d4bfff")
          (br-cyan    . "#95e6cb")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key ayu_mirage-colors)) 'unspecified))))

  (custom-theme-set-faces
   'ayu_mirage

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

(provide-theme 'ayu_mirage)
