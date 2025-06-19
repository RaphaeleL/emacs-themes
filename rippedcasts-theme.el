(deftheme rippedcasts
  "rippedcasts-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (rippedcasts-colors
        '(
          (bg         . "#2b2b2b")
          (fg         . "#ffffff")
          (cursor     . "#7f7f7f")
          (cursor-txt . "#ffffff")
          (selection  . "#5a647e")
          (selection-fg . "#f2f2f2")
          (black      . "#000000")
          (red        . "#cdaf95")
          (green      . "#a8ff60")
          (yellow     . "#bfbb1f")
          (blue       . "#75a5b0")
          (magenta    . "#ff73fd")
          (cyan       . "#5a647e")
          (white      . "#bfbfbf")
          (br-black   . "#666666")
          (br-red     . "#eecbad")
          (br-green   . "#bcee68")
          (br-yellow  . "#e5e500")
          (br-blue    . "#86bdc9")
          (br-magenta . "#e500e5")
          (br-cyan    . "#8c9bc4")
          (br-white   . "#e5e5e5")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key rippedcasts-colors)) 'unspecified))))

  (custom-theme-set-faces
   'rippedcasts

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

(provide-theme 'rippedcasts)
