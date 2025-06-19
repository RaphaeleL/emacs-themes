(deftheme breeze
  "breeze-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (breeze-colors
        '(
          (bg         . "#31363b")
          (fg         . "#eff0f1")
          (cursor     . "#eff0f1")
          (cursor-txt . "#31363b")
          (selection  . "#eff0f1")
          (selection-fg . "#31363b")
          (black      . "#31363b")
          (red        . "#ed1515")
          (green      . "#11d116")
          (yellow     . "#f67400")
          (blue       . "#1d99f3")
          (magenta    . "#9b59b6")
          (cyan       . "#1abc9c")
          (white      . "#eff0f1")
          (br-black   . "#7f8c8d")
          (br-red     . "#c0392b")
          (br-green   . "#1cdc9a")
          (br-yellow  . "#fdbc4b")
          (br-blue    . "#3daee9")
          (br-magenta . "#8e44ad")
          (br-cyan    . "#16a085")
          (br-white   . "#fcfcfc")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key breeze-colors)) 'unspecified))))

  (custom-theme-set-faces
   'breeze

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

(provide-theme 'breeze)
