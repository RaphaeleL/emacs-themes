(deftheme atom
  "atom-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (atom-colors
        '(
          (bg         . "#161719")
          (fg         . "#c5c8c6")
          (cursor     . "#d0d0d0")
          (cursor-txt . "#151515")
          (selection  . "#444444")
          (selection-fg . "#c5c8c6")
          (black      . "#000000")
          (red        . "#fd5ff1")
          (green      . "#87c38a")
          (yellow     . "#ffd7b1")
          (blue       . "#85befd")
          (magenta    . "#b9b6fc")
          (cyan       . "#85befd")
          (white      . "#e0e0e0")
          (br-black   . "#000000")
          (br-red     . "#fd5ff1")
          (br-green   . "#94fa36")
          (br-yellow  . "#f5ffa8")
          (br-blue    . "#96cbfe")
          (br-magenta . "#b9b6fc")
          (br-cyan    . "#85befd")
          (br-white   . "#e0e0e0")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key atom-colors)) 'unspecified))))

  (custom-theme-set-faces
   'atom

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

(provide-theme 'atom)
