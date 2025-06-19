(deftheme terafox
  "terafox-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (terafox-colors
        '(
          (bg         . "#152528")
          (fg         . "#e6eaea")
          (cursor     . "#e6eaea")
          (cursor-txt . "#152528")
          (selection  . "#293e40")
          (selection-fg . "#e6eaea")
          (black      . "#2f3239")
          (red        . "#e85c51")
          (green      . "#7aa4a1")
          (yellow     . "#fda47f")
          (blue       . "#5a93aa")
          (magenta    . "#ad5c7c")
          (cyan       . "#a1cdd8")
          (white      . "#ebebeb")
          (br-black   . "#4e5157")
          (br-red     . "#eb746b")
          (br-green   . "#8eb2af")
          (br-yellow  . "#fdb292")
          (br-blue    . "#73a3b7")
          (br-magenta . "#b97490")
          (br-cyan    . "#afd4de")
          (br-white   . "#eeeeee")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key terafox-colors)) 'unspecified))))

  (custom-theme-set-faces
   'terafox

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

(provide-theme 'terafox)
