(deftheme 0x96f
  "0x96f-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (0x96f-colors
        '(
          (bg         . "#262427")
          (fg         . "#fcfcfa")
          (cursor     . "#fcfcfa")
          (cursor-txt . "#000000")
          (selection  . "#fcfcfa")
          (selection-fg . "#262427")
          (black      . "#262427")
          (red        . "#ff7272")
          (green      . "#bcdf59")
          (yellow     . "#ffca58")
          (blue       . "#49cae4")
          (magenta    . "#a093e2")
          (cyan       . "#aee8f4")
          (white      . "#fcfcfa")
          (br-black   . "#545452")
          (br-red     . "#ff8787")
          (br-green   . "#c6e472")
          (br-yellow  . "#ffd271")
          (br-blue    . "#64d2e8")
          (br-magenta . "#aea3e6")
          (br-cyan    . "#baebf6")
          (br-white   . "#fcfcfa")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key 0x96f-colors)) 'unspecified))))

  (custom-theme-set-faces
   '0x96f

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

(provide-theme '0x96f)
