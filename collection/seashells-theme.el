(deftheme seashells
  "seashells-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (seashells-colors
        '(
          (bg         . "#09141b")
          (fg         . "#deb88d")
          (cursor     . "#fca02f")
          (cursor-txt . "#08131a")
          (selection  . "#1e4962")
          (selection-fg . "#fee4ce")
          (black      . "#17384c")
          (red        . "#d15123")
          (green      . "#027c9b")
          (yellow     . "#fca02f")
          (blue       . "#1e4950")
          (magenta    . "#68d4f1")
          (cyan       . "#50a3b5")
          (white      . "#deb88d")
          (br-black   . "#434b53")
          (br-red     . "#d48678")
          (br-green   . "#628d98")
          (br-yellow  . "#fdd39f")
          (br-blue    . "#1bbcdd")
          (br-magenta . "#bbe3ee")
          (br-cyan    . "#87acb4")
          (br-white   . "#fee4ce")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key seashells-colors)) 'unspecified))))

  (custom-theme-set-faces
   'seashells

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

(provide-theme 'seashells)
