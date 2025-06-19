(deftheme iceberglight
  "iceberglight-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (iceberglight-colors
        '(
          (bg         . "#e8e9ec")
          (fg         . "#33374c")
          (cursor     . "#33374c")
          (cursor-txt . "#e8e9ec")
          (selection  . "#33374c")
          (selection-fg . "#e8e9ec")
          (black      . "#dcdfe7")
          (red        . "#cc517a")
          (green      . "#668e3d")
          (yellow     . "#c57339")
          (blue       . "#2d539e")
          (magenta    . "#7759b4")
          (cyan       . "#3f83a6")
          (white      . "#33374c")
          (br-black   . "#8389a3")
          (br-red     . "#cc3768")
          (br-green   . "#598030")
          (br-yellow  . "#b6662d")
          (br-blue    . "#22478e")
          (br-magenta . "#6845ad")
          (br-cyan    . "#327698")
          (br-white   . "#262a3f")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key iceberglight-colors)) 'unspecified))))

  (custom-theme-set-faces
   'iceberglight

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

(provide-theme 'iceberglight)
