(deftheme mellow
  "mellow-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (mellow-colors
        '(
          (bg         . "#161617")
          (fg         . "#c9c7cd")
          (cursor     . "#cac9dd")
          (cursor-txt . "#161617")
          (selection  . "#2a2a2d")
          (selection-fg . "#c1c0d4")
          (black      . "#27272a")
          (red        . "#f5a191")
          (green      . "#90b99f")
          (yellow     . "#e6b99d")
          (blue       . "#aca1cf")
          (magenta    . "#e29eca")
          (cyan       . "#ea83a5")
          (white      . "#c1c0d4")
          (br-black   . "#353539")
          (br-red     . "#ffae9f")
          (br-green   . "#9dc6ac")
          (br-yellow  . "#f0c5a9")
          (br-blue    . "#b9aeda")
          (br-magenta . "#ecaad6")
          (br-cyan    . "#f591b2")
          (br-white   . "#cac9dd")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key mellow-colors)) 'unspecified))))

  (custom-theme-set-faces
   'mellow

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

(provide-theme 'mellow)
