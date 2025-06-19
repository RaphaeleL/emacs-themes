(deftheme jellybeans
  "jellybeans-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (jellybeans-colors
        '(
          (bg         . "#121212")
          (fg         . "#dedede")
          (cursor     . "#ffa560")
          (cursor-txt . "#ffffff")
          (selection  . "#474e91")
          (selection-fg . "#f4f4f4")
          (black      . "#929292")
          (red        . "#e27373")
          (green      . "#94b979")
          (yellow     . "#ffba7b")
          (blue       . "#97bedc")
          (magenta    . "#e1c0fa")
          (cyan       . "#00988e")
          (white      . "#dedede")
          (br-black   . "#bdbdbd")
          (br-red     . "#ffa1a1")
          (br-green   . "#bddeab")
          (br-yellow  . "#ffdca0")
          (br-blue    . "#b1d8f6")
          (br-magenta . "#fbdaff")
          (br-cyan    . "#1ab2a8")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key jellybeans-colors)) 'unspecified))))

  (custom-theme-set-faces
   'jellybeans

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

(provide-theme 'jellybeans)
