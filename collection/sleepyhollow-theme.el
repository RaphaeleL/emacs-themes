(deftheme sleepyhollow
  "sleepyhollow-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (sleepyhollow-colors
        '(
          (bg         . "#121214")
          (fg         . "#af9a91")
          (cursor     . "#af9a91")
          (cursor-txt . "#391a02")
          (selection  . "#575256")
          (selection-fg . "#d2c7a9")
          (black      . "#572100")
          (red        . "#ba3934")
          (green      . "#91773f")
          (yellow     . "#b55600")
          (blue       . "#5f63b4")
          (magenta    . "#a17c7b")
          (cyan       . "#8faea9")
          (white      . "#af9a91")
          (br-black   . "#4e4b61")
          (br-red     . "#d9443f")
          (br-green   . "#d6b04e")
          (br-yellow  . "#f66813")
          (br-blue    . "#8086ef")
          (br-magenta . "#e2c2bb")
          (br-cyan    . "#a4dce7")
          (br-white   . "#d2c7a9")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key sleepyhollow-colors)) 'unspecified))))

  (custom-theme-set-faces
   'sleepyhollow

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

(provide-theme 'sleepyhollow)
