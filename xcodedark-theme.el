(deftheme xcodedark
  "xcodedark-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (xcodedark-colors
        '(
          (bg         . "#292a30")
          (fg         . "#dfdfe0")
          (cursor     . "#dfdfe0")
          (cursor-txt . "#292a30")
          (selection  . "#414453")
          (selection-fg . "#dfdfe0")
          (black      . "#414453")
          (red        . "#ff8170")
          (green      . "#78c2b3")
          (yellow     . "#d9c97c")
          (blue       . "#4eb0cc")
          (magenta    . "#ff7ab2")
          (cyan       . "#b281eb")
          (white      . "#dfdfe0")
          (br-black   . "#7f8c98")
          (br-red     . "#ff8170")
          (br-green   . "#acf2e4")
          (br-yellow  . "#ffa14f")
          (br-blue    . "#6bdfff")
          (br-magenta . "#ff7ab2")
          (br-cyan    . "#dabaff")
          (br-white   . "#dfdfe0")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key xcodedark-colors)) 'unspecified))))

  (custom-theme-set-faces
   'xcodedark

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

(provide-theme 'xcodedark)
