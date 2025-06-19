(deftheme mariana
  "mariana-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (mariana-colors
        '(
          (bg         . "#343d46")
          (fg         . "#d8dee9")
          (cursor     . "#fcbb6a")
          (cursor-txt . "#ffffff")
          (selection  . "#4e5a65")
          (selection-fg . "#d8dee9")
          (black      . "#000000")
          (red        . "#ec5f66")
          (green      . "#99c794")
          (yellow     . "#f9ae58")
          (blue       . "#6699cc")
          (magenta    . "#c695c6")
          (cyan       . "#5fb4b4")
          (white      . "#f7f7f7")
          (br-black   . "#333333")
          (br-red     . "#f97b58")
          (br-green   . "#acd1a8")
          (br-yellow  . "#fac761")
          (br-blue    . "#85add6")
          (br-magenta . "#d8b6d8")
          (br-cyan    . "#82c4c4")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key mariana-colors)) 'unspecified))))

  (custom-theme-set-faces
   'mariana

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

(provide-theme 'mariana)
