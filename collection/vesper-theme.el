(deftheme vesper
  "vesper-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (vesper-colors
        '(
          (bg         . "#101010")
          (fg         . "#ffffff")
          (cursor     . "#acb1ab")
          (cursor-txt . "#ffffff")
          (selection  . "#988049")
          (selection-fg . "#acb1ab")
          (black      . "#101010")
          (red        . "#f5a191")
          (green      . "#90b99f")
          (yellow     . "#e6b99d")
          (blue       . "#aca1cf")
          (magenta    . "#e29eca")
          (cyan       . "#ea83a5")
          (white      . "#a0a0a0")
          (br-black   . "#7e7e7e")
          (br-red     . "#ff8080")
          (br-green   . "#99ffe4")
          (br-yellow  . "#ffc799")
          (br-blue    . "#b9aeda")
          (br-magenta . "#ecaad6")
          (br-cyan    . "#f591b2")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key vesper-colors)) 'unspecified))))

  (custom-theme-set-faces
   'vesper

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

(provide-theme 'vesper)
