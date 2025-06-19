(deftheme cyberpunk
  "cyberpunk-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (cyberpunk-colors
        '(
          (bg         . "#332a57")
          (fg         . "#e5e5e5")
          (cursor     . "#21f6bc")
          (cursor-txt . "#ffffff")
          (selection  . "#c1deff")
          (selection-fg . "#000000")
          (black      . "#000000")
          (red        . "#ff7092")
          (green      . "#00fbac")
          (yellow     . "#fffa6a")
          (blue       . "#00bfff")
          (magenta    . "#df95ff")
          (cyan       . "#86cbfe")
          (white      . "#ffffff")
          (br-black   . "#000000")
          (br-red     . "#ff8aa4")
          (br-green   . "#21f6bc")
          (br-yellow  . "#fff787")
          (br-blue    . "#1bccfd")
          (br-magenta . "#e6aefe")
          (br-cyan    . "#99d6fc")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key cyberpunk-colors)) 'unspecified))))

  (custom-theme-set-faces
   'cyberpunk

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

(provide-theme 'cyberpunk)
