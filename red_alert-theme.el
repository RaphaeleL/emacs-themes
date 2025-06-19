(deftheme red_alert
  "red_alert-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (red_alert-colors
        '(
          (bg         . "#762423")
          (fg         . "#ffffff")
          (cursor     . "#ffffff")
          (cursor-txt . "#762423")
          (selection  . "#073642")
          (selection-fg . "#ffffff")
          (black      . "#000000")
          (red        . "#d62e4e")
          (green      . "#71be6b")
          (yellow     . "#beb86b")
          (blue       . "#489bee")
          (magenta    . "#e979d7")
          (cyan       . "#6bbeb8")
          (white      . "#d6d6d6")
          (br-black   . "#262626")
          (br-red     . "#e02553")
          (br-green   . "#aff08c")
          (br-yellow  . "#dfddb7")
          (br-blue    . "#65aaf1")
          (br-magenta . "#ddb7df")
          (br-cyan    . "#b7dfdd")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key red_alert-colors)) 'unspecified))))

  (custom-theme-set-faces
   'red_alert

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

(provide-theme 'red_alert)
