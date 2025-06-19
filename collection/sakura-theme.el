(deftheme sakura
  "sakura-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (sakura-colors
        '(
          (bg         . "#18131e")
          (fg         . "#dd7bdc")
          (cursor     . "#ff65fd")
          (cursor-txt . "#24242e")
          (selection  . "#c05cbf")
          (selection-fg . "#24242e")
          (black      . "#000000")
          (red        . "#d52370")
          (green      . "#41af1a")
          (yellow     . "#bc7053")
          (blue       . "#6964ab")
          (magenta    . "#c71fbf")
          (cyan       . "#939393")
          (white      . "#998eac")
          (br-black   . "#786d69")
          (br-red     . "#f41d99")
          (br-green   . "#22e529")
          (br-yellow  . "#f59574")
          (br-blue    . "#9892f1")
          (br-magenta . "#e90cdd")
          (br-cyan    . "#eeeeee")
          (br-white   . "#cbb6ff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key sakura-colors)) 'unspecified))))

  (custom-theme-set-faces
   'sakura

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

(provide-theme 'sakura)
