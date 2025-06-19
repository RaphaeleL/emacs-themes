(deftheme paulmillr
  "paulmillr-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (paulmillr-colors
        '(
          (bg         . "#000000")
          (fg         . "#f2f2f2")
          (cursor     . "#4d4d4d")
          (cursor-txt . "#ffffff")
          (selection  . "#414141")
          (selection-fg . "#ffffff")
          (black      . "#2a2a2a")
          (red        . "#ff0000")
          (green      . "#79ff0f")
          (yellow     . "#e7bf00")
          (blue       . "#396bd7")
          (magenta    . "#b449be")
          (cyan       . "#66ccff")
          (white      . "#bbbbbb")
          (br-black   . "#666666")
          (br-red     . "#ff0080")
          (br-green   . "#66ff66")
          (br-yellow  . "#f3d64e")
          (br-blue    . "#709aed")
          (br-magenta . "#db67e6")
          (br-cyan    . "#7adff2")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key paulmillr-colors)) 'unspecified))))

  (custom-theme-set-faces
   'paulmillr

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

(provide-theme 'paulmillr)
