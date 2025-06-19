(deftheme cobaltnextdark
  "cobaltnextdark-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (cobaltnextdark-colors
        '(
          (bg         . "#0f1c23")
          (fg         . "#d8dee9")
          (cursor     . "#fac863")
          (cursor-txt . "#ffffff")
          (selection  . "#5fb3b3")
          (selection-fg . "#ffffff")
          (black      . "#282f36")
          (red        . "#e6576a")
          (green      . "#99c794")
          (yellow     . "#fac863")
          (blue       . "#5a9bcf")
          (magenta    . "#c5a5c5")
          (cyan       . "#5fb3b3")
          (white      . "#d8dee9")
          (br-black   . "#65737e")
          (br-red     . "#d6838c")
          (br-green   . "#c1dcbe")
          (br-yellow  . "#ffde9b")
          (br-blue    . "#8abee7")
          (br-magenta . "#edcded")
          (br-cyan    . "#9be2e2")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key cobaltnextdark-colors)) 'unspecified))))

  (custom-theme-set-faces
   'cobaltnextdark

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

(provide-theme 'cobaltnextdark)
