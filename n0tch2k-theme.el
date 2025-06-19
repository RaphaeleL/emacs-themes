(deftheme n0tch2k
  "n0tch2k-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (n0tch2k-colors
        '(
          (bg         . "#222222")
          (fg         . "#a0a0a0")
          (cursor     . "#aa9175")
          (cursor-txt . "#000000")
          (selection  . "#4d4d4d")
          (selection-fg . "#ffffff")
          (black      . "#383838")
          (red        . "#a95551")
          (green      . "#666666")
          (yellow     . "#a98051")
          (blue       . "#657d3e")
          (magenta    . "#767676")
          (cyan       . "#c9c9c9")
          (white      . "#d0b8a3")
          (br-black   . "#474747")
          (br-red     . "#a97775")
          (br-green   . "#8c8c8c")
          (br-yellow  . "#a99175")
          (br-blue    . "#98bd5e")
          (br-magenta . "#a3a3a3")
          (br-cyan    . "#dcdcdc")
          (br-white   . "#d8c8bb")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key n0tch2k-colors)) 'unspecified))))

  (custom-theme-set-faces
   'n0tch2k

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

(provide-theme 'n0tch2k)
