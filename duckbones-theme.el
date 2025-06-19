(deftheme duckbones
  "duckbones-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (duckbones-colors
        '(
          (bg         . "#0e101a")
          (fg         . "#ebefc0")
          (cursor     . "#edf2c2")
          (cursor-txt . "#0e101a")
          (selection  . "#37382d")
          (selection-fg . "#ebefc0")
          (black      . "#0e101a")
          (red        . "#e03600")
          (green      . "#5dcd97")
          (yellow     . "#e39500")
          (blue       . "#00a3cb")
          (magenta    . "#795ccc")
          (cyan       . "#00a3cb")
          (white      . "#ebefc0")
          (br-black   . "#2b2f46")
          (br-red     . "#ff4821")
          (br-green   . "#58db9e")
          (br-yellow  . "#f6a100")
          (br-blue    . "#00b4e0")
          (br-magenta . "#b3a1e6")
          (br-cyan    . "#00b4e0")
          (br-white   . "#b3b692")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key duckbones-colors)) 'unspecified))))

  (custom-theme-set-faces
   'duckbones

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

(provide-theme 'duckbones)
