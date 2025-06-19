(deftheme seafoam_pastel
  "seafoam_pastel-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (seafoam_pastel-colors
        '(
          (bg         . "#243435")
          (fg         . "#d4e7d4")
          (cursor     . "#57647a")
          (cursor-txt . "#323232")
          (selection  . "#ffffff")
          (selection-fg . "#9e8b13")
          (black      . "#757575")
          (red        . "#825d4d")
          (green      . "#728c62")
          (yellow     . "#ada16d")
          (blue       . "#4d7b82")
          (magenta    . "#8a7267")
          (cyan       . "#729494")
          (white      . "#e0e0e0")
          (br-black   . "#8a8a8a")
          (br-red     . "#cf937a")
          (br-green   . "#98d9aa")
          (br-yellow  . "#fae79d")
          (br-blue    . "#7ac3cf")
          (br-magenta . "#d6b2a1")
          (br-cyan    . "#ade0e0")
          (br-white   . "#e0e0e0")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key seafoam_pastel-colors)) 'unspecified))))

  (custom-theme-set-faces
   'seafoam_pastel

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

(provide-theme 'seafoam_pastel)
