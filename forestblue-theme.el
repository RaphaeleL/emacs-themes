(deftheme forestblue
  "forestblue-inspired color theme for Emacs.")

(let* ((class '((class color) (min-colors 89)))
       (forestblue-colors
        '(
          (bg         . "#051519")
          (fg         . "#e2d8cd")
          (cursor     . "#9e9ecb")
          (cursor-txt . "#000000")
          (selection  . "#4d4d4d")
          (selection-fg . "#ffffff")
          (black      . "#333333")
          (red        . "#f8818e")
          (green      . "#92d3a2")
          (yellow     . "#1a8e63")
          (blue       . "#8ed0ce")
          (magenta    . "#5e468c")
          (cyan       . "#31658c")
          (white      . "#e2d8cd")
          (br-black   . "#3d3d3d")
          (br-red     . "#fb3d66")
          (br-green   . "#6bb48d")
          (br-yellow  . "#30c85a")
          (br-blue    . "#39a7a2")
          (br-magenta . "#7e62b3")
          (br-cyan    . "#6096bf")
          (br-white   . "#e2d8cd")
          ))

       ;; Helper to safely get color or 'unspecified
       (safe-get-color (lambda (key)
                         (or (cdr (assoc key forestblue-colors)) 'unspecified))))

  (custom-theme-set-faces
   'forestblue

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

(provide-theme 'forestblue)
