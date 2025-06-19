(deftheme everblush
  "everblush-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (everblush-colors
        '(
          (bg         . "#141b1e")
          (fg         . "#dadada")
          (cursor     . "#dadada")
          (cursor-txt . "#141b1e")
          (selection  . "#141b1e")
          (selection-fg . "#dadada")
          (black      . "#232a2d")
          (red        . "#e57474")
          (green      . "#8ccf7e")
          (yellow     . "#e5c76b")
          (blue       . "#67b0e8")
          (magenta    . "#c47fd5")
          (cyan       . "#6cbfbf")
          (white      . "#b3b9b8")
          (br-black   . "#2d3437")
          (br-red     . "#ef7e7e")
          (br-green   . "#96d988")
          (br-yellow  . "#f4d67a")
          (br-blue    . "#71baf2")
          (br-magenta . "#ce89df")
          (br-cyan    . "#67cbe7")
          (br-white   . "#bdc3c2")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key everblush-colors)) 'unspecified))))

  (custom-theme-set-faces
   'everblush

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

(provide-theme 'everblush)
