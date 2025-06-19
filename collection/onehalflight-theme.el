(deftheme onehalflight
  "onehalflight-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (onehalflight-colors
        '(
          (bg         . "#fafafa")
          (fg         . "#383a42")
          (cursor     . "#bfceff")
          (cursor-txt . "#383a42")
          (selection  . "#bfceff")
          (selection-fg . "#383a42")
          (black      . "#383a42")
          (red        . "#e45649")
          (green      . "#50a14f")
          (yellow     . "#c18401")
          (blue       . "#0184bc")
          (magenta    . "#a626a4")
          (cyan       . "#0997b3")
          (white      . "#fafafa")
          (br-black   . "#4f525e")
          (br-red     . "#e06c75")
          (br-green   . "#98c379")
          (br-yellow  . "#e5c07b")
          (br-blue    . "#61afef")
          (br-magenta . "#c678dd")
          (br-cyan    . "#56b6c2")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key onehalflight-colors)) 'unspecified))))

  (custom-theme-set-faces
   'onehalflight

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

(provide-theme 'onehalflight)
