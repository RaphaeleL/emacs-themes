(deftheme twilight
  "twilight-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (twilight-colors
        '(
          (bg         . "#141414")
          (fg         . "#ffffd4")
          (cursor     . "#ffffff")
          (cursor-txt . "#000000")
          (selection  . "#313131")
          (selection-fg . "#ffffd4")
          (black      . "#141414")
          (red        . "#c06d44")
          (green      . "#afb97a")
          (yellow     . "#c2a86c")
          (blue       . "#44474a")
          (magenta    . "#b4be7c")
          (cyan       . "#778385")
          (white      . "#ffffd4")
          (br-black   . "#262626")
          (br-red     . "#de7c4c")
          (br-green   . "#ccd88c")
          (br-yellow  . "#e2c47e")
          (br-blue    . "#5a5e62")
          (br-magenta . "#d0dc8e")
          (br-cyan    . "#8a989b")
          (br-white   . "#ffffd4")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key twilight-colors)) 'unspecified))))

  (custom-theme-set-faces
   'twilight

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

(provide-theme 'twilight)
