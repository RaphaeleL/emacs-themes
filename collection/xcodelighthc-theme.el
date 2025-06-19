(deftheme xcodelighthc
  "xcodelighthc-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (xcodelighthc-colors
        '(
          (bg         . "#ffffff")
          (fg         . "#000000")
          (cursor     . "#000000")
          (cursor-txt . "#ffffff")
          (selection  . "#b4d8fd")
          (selection-fg . "#000000")
          (black      . "#b4d8fd")
          (red        . "#ad1805")
          (green      . "#355d61")
          (yellow     . "#78492a")
          (blue       . "#0058a1")
          (magenta    . "#9c2191")
          (cyan       . "#703daa")
          (white      . "#000000")
          (br-black   . "#8a99a6")
          (br-red     . "#ad1805")
          (br-green   . "#174145")
          (br-yellow  . "#78492a")
          (br-blue    . "#003f73")
          (br-magenta . "#9c2191")
          (br-cyan    . "#441ea1")
          (br-white   . "#000000")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key xcodelighthc-colors)) 'unspecified))))

  (custom-theme-set-faces
   'xcodelighthc

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

(provide-theme 'xcodelighthc)
