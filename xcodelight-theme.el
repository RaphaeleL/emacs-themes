(deftheme xcodelight
  "xcodelight-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (xcodelight-colors
        '(
          (bg         . "#ffffff")
          (fg         . "#262626")
          (cursor     . "#262626")
          (cursor-txt . "#ffffff")
          (selection  . "#b4d8fd")
          (selection-fg . "#262626")
          (black      . "#b4d8fd")
          (red        . "#d12f1b")
          (green      . "#3e8087")
          (yellow     . "#78492a")
          (blue       . "#0f68a0")
          (magenta    . "#ad3da4")
          (cyan       . "#804fb8")
          (white      . "#262626")
          (br-black   . "#8a99a6")
          (br-red     . "#d12f1b")
          (br-green   . "#23575c")
          (br-yellow  . "#78492a")
          (br-blue    . "#0b4f79")
          (br-magenta . "#ad3da4")
          (br-cyan    . "#4b21b0")
          (br-white   . "#262626")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key xcodelight-colors)) 'unspecified))))

  (custom-theme-set-faces
   'xcodelight

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

(provide-theme 'xcodelight)
