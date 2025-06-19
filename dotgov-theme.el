(deftheme dotgov
  "dotgov-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (dotgov-colors
        '(
          (bg         . "#262c35")
          (fg         . "#ebebeb")
          (cursor     . "#d9002f")
          (cursor-txt . "#ffffff")
          (selection  . "#1a4080")
          (selection-fg . "#ffffff")
          (black      . "#191919")
          (red        . "#bf091d")
          (green      . "#3d9751")
          (yellow     . "#f6bb34")
          (blue       . "#17b2e0")
          (magenta    . "#7830b0")
          (cyan       . "#8bd2ed")
          (white      . "#ffffff")
          (br-black   . "#191919")
          (br-red     . "#bf091d")
          (br-green   . "#3d9751")
          (br-yellow  . "#f6bb34")
          (br-blue    . "#17b2e0")
          (br-magenta . "#7830b0")
          (br-cyan    . "#8bd2ed")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key dotgov-colors)) 'unspecified))))

  (custom-theme-set-faces
   'dotgov

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

(provide-theme 'dotgov)
