(deftheme cyberdyne
  "cyberdyne-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (cyberdyne-colors
        '(
          (bg         . "#151144")
          (fg         . "#00ff92")
          (cursor     . "#00ff9c")
          (cursor-txt . "#ffffff")
          (selection  . "#454d96")
          (selection-fg . "#f4f4f4")
          (black      . "#080808")
          (red        . "#ff8373")
          (green      . "#00c172")
          (yellow     . "#d2a700")
          (blue       . "#0071cf")
          (magenta    . "#ff90fe")
          (cyan       . "#6bffdd")
          (white      . "#f1f1f1")
          (br-black   . "#2e2e2e")
          (br-red     . "#ffc4be")
          (br-green   . "#d6fcba")
          (br-yellow  . "#fffed5")
          (br-blue    . "#c2e3ff")
          (br-magenta . "#ffb2fe")
          (br-cyan    . "#e6e7fe")
          (br-white   . "#ffffff")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key cyberdyne-colors)) 'unspecified))))

  (custom-theme-set-faces
   'cyberdyne

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

(provide-theme 'cyberdyne)
